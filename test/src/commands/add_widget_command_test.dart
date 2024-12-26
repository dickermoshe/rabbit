import 'dart:io';

import 'package:mason_logger/mason_logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:widget_wrapper/src/command_runner.dart';
import 'package:widget_wrapper/src/commands/messages.dart';
import 'package:path/path.dart' as p;
import 'package:test_descriptor/test_descriptor.dart' as d;

class _MockLogger extends Mock implements Logger {}

class _MockProgress extends Mock implements Progress {}

void main() async {
  group('test add widget', () {
    late Logger logger;
    late WidgetWrapperCommandRunner commandRunner;
    setUp(() async {
      logger = _MockLogger();
      commandRunner = WidgetWrapperCommandRunner(logger: logger);

      when(() => logger.err(any())).thenAnswer((i) {
        print(i.positionalArguments.first);
      });
      when(() => logger.success(any())).thenAnswer((i) {
        print(i.positionalArguments.first);
      });
      when(() => logger.level).thenAnswer((i) {
        return Level.verbose;
      });
      when(() => logger.progress(any())).thenAnswer((i) {
        return _MockProgress();
      });
      when(() => logger.prompt(any())).thenAnswer((i) {
        return i.positionalArguments.first;
      });
    });

    for (final isMocked in [true, false]) {
      group("mocked: ${isMocked}", () {
        test('must find pubspec.yaml', () async {
          final testProject =
              await createTestProject(mockDependencies: isMocked);
          testProject.pubspec.deleteSync();
          final result = await commandRunner.run(['generate']);
          expect(result, equals(ExitCode.usage.code));
          verify(() => logger.err(pubspecMissingError)).called(1);
        });

        test('must have flutter', () async {
          await createTestProject(mockDependencies: isMocked, content: '''
name: widget_wrapper
version: 0.0.1
''');
          final result = await commandRunner.run(['generate']);
          expect(result, equals(ExitCode.usage.code));
          verify(() => logger.err(flutterMissingError)).called(1);
        });

        test('bad widget_wrapper config', () async {
          final testProject =
              await createTestProject(mockDependencies: isMocked);

          final badConfigs = [
            '''
name: widget_wrapper
version: 0.0.1
dependencies:
  flutter:
    path: flutter
''',
            '''
name: widget_wrapper
version: 0.0.1
dependencies:
  flutter:
    path: flutter
widget_wrapper:
''',
            '''
name: widget_wrapper
version: 0.0.1
dependencies:
  flutter:
    path: flutter
widget_wrapper:
  widgets:
    1: invalid_widget
''',
            '''
name: widget_wrapper
version: 0.0.1
dependencies:
  flutter:
    path: flutter
widget_wrapper:
  widgets:
    hllo: invalid_widget
'''
          ];
          for (final config in badConfigs) {
            testProject.pubspec.writeAsStringSync(config);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.usage.code));
          }
          verify(() => logger.err(invalidConfig)).called(badConfigs.length);
        });
        test('good config', () async {
          await createTestProject(mockDependencies: isMocked, content: '''
name: widget_wrapper
version: 0.0.1
dependencies:
  flutter:
    path: flutter

widget_wrapper:
  widgets:
    hello:
      - widget
''');

          final result =
              await commandRunner.run(['generate', '--validate_config']);
          expect(result, equals(ExitCode.success.code));
        });
        test('bad library', () async {
          await createTestProject(
              mockDependencies: isMocked,
              content: '''
widget_wrapper:
  widgets:
    flutter:
      - invalid_widget
''',
              append: true);

          final result =
              await commandRunner.run(['generate', "--validate_libraries"]);
          expect(result, equals(ExitCode.usage.code));
          verify(() => logger.err(invalidLibraryError("flutter"))).called(1);
        });

        test('good library', () async {
          await createTestProject(
              mockDependencies: isMocked,
              content: '''
widget_wrapper:
  widgets:
    package:flutter/material.dart:
      - foo
    package:flutter/cupertino.dart:
      - all
''',
              append: true);
          final result =
              await commandRunner.run(['generate', "--validate_libraries"]);
          expect(result, equals(ExitCode.success.code));
        });

        group("validate wrapper", () {
          test('bad widget', () async {
            await createTestProject(
                mockDependencies: isMocked,
                content: '''
widget_wrapper:
  widgets:
    "package:shadcn_ui/shadcn_ui.dart":
      - invalid_widget
''',
                append: true);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.usage.code));

            verify(() => logger.err(widgetNotFound(
                    "package:shadcn_ui/shadcn_ui.dart", "invalid_widget")))
                .called(1);
          });
          test('single widget', () async {
            final testProject =
                await createTestProject(mockDependencies: isMocked);

            testProject.pubspec.writeAsStringSync('''
widget_wrapper:
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.success.code));

            if (isMocked) {
              await d.dir("lib", [
                d.dir("src", [
                  d.dir("wrapped", [
                    d.dir("shadcn_ui", [
                      d.file("shadcn_ui.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';

class \$ShadButton extends StatelessWidget {
  \$ShadButton({required this.text});

  final String text;

  Widget build(BuildContext context) {
    return ShadButton(text: text);
  }
}
""")
                    ])
                  ])
                ])
              ]).validate(testProject.io.path);
            }
          });
          test('all widget', () async {
            final testProject =
                await createTestProject(mockDependencies: isMocked);

            testProject.pubspec.writeAsStringSync('''
widget_wrapper:
  widgets:
    package:flutter/material.dart:
      - all
''', mode: FileMode.append);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.success.code));
          });
          test('multi package', () async {
            final testProject =
                await createTestProject(mockDependencies: isMocked);

            testProject.pubspec.writeAsStringSync('''
widget_wrapper:
  widgets:
    package:flutter/material.dart:
      - all
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.success.code));
            if (isMocked) {
              await d.dir("lib", [
                d.dir("src", [
                  d.dir("wrapped", [
                    d.dir("shadcn_ui", [
                      d.file("shadcn_ui.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';

class \$ShadButton extends StatelessWidget {
  \$ShadButton({required this.text});

  final String text;

  Widget build(BuildContext context) {
    return ShadButton(text: text);
  }
}
""")
                    ])
                  ])
                ])
              ]).validate(testProject.io.path);
            }
          });
          test('custom file', () async {
            final testProject =
                await createTestProject(mockDependencies: isMocked);

            testProject.pubspec.writeAsStringSync('''
widget_wrapper:
  output_dir: lib/src/widgets
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.success.code));
            if (isMocked) {
              await d.dir("lib", [
                d.dir("src", [
                  d.dir("widgets", [
                    d.dir("shadcn_ui", [
                      d.file("shadcn_ui.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';

class \$ShadButton extends StatelessWidget {
  \$ShadButton({required this.text});

  final String text;

  Widget build(BuildContext context) {
    return ShadButton(text: text);
  }
}
""")
                    ])
                  ])
                ])
              ]).validate(testProject.io.path);
            }
          });
          test('with prefix', timeout: Timeout(Duration(minutes: 5)), () async {
            final testProject =
                await createTestProject(mockDependencies: isMocked);

            testProject.pubspec.writeAsStringSync('''
widget_wrapper:
  import_prefix: true
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.success.code));

            if (isMocked) {
              await d.dir("lib", [
                d.dir("src", [
                  d.dir("wrapped", [
                    d.dir("shadcn_ui", [
                      d.file("shadcn_ui.dart",
                          """// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i1;
import 'package:shadcn_ui/shadcn_ui.dart' as _i2;

class \$ShadButton extends _i1.StatelessWidget {
  \$ShadButton({required this.text});

  final String text;

  _i1.Widget build(_i1.BuildContext context) {
    return _i2.ShadButton(text: text);
  }
}
""")
                    ])
                  ])
                ])
              ]).validate(testProject.io.path);
            }

            // Generations with prefix should be able to pass the dart analyzer
            final analyzeResult = Process.runSync(
              'dart',
              ['analyze', "--fatal-infos"],
              workingDirectory: p.normalize(testProject.io.path),
            );
            expect(analyzeResult.exitCode, equals(0),
                reason: analyzeResult.stderr);
          });

          if (isMocked) {
            test('custom prefix', () async {
              final testProject =
                  await createTestProject(mockDependencies: isMocked);

              testProject.pubspec.writeAsStringSync('''
widget_wrapper:
  prefix: My
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
              final result = await commandRunner.run(['generate']);
              expect(result, equals(ExitCode.success.code));

              await d.dir("lib", [
                d.dir("src", [
                  d.dir("wrapped", [
                    d.dir("shadcn_ui", [
                      d.file("shadcn_ui.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';

class MyShadButton extends StatelessWidget {
  MyShadButton({required this.text});

  final String text;

  Widget build(BuildContext context) {
    return ShadButton(text: text);
  }
}
""")
                    ])
                  ])
                ])
              ]).validate(testProject.io.path);
            });
            test('with docs', () async {
              final testProject =
                  await createTestProject(mockDependencies: isMocked);

              testProject.pubspec.writeAsStringSync('''
widget_wrapper:
  docs: true
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
              final result = await commandRunner.run(['generate']);
              expect(result, equals(ExitCode.success.code));

              await d.dir("lib", [
                d.dir("src", [
                  d.dir("wrapped", [
                    d.dir("shadcn_ui", [
                      d.file("shadcn_ui.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';

/// Class Docs
class \$ShadButton extends StatelessWidget {
  /// Constructor Docs
  \$ShadButton({required this.text});

  /// Field Docs
  final String text;

  Widget build(BuildContext context) {
    return ShadButton(text: text);
  }
}
""")
                    ])
                  ])
                ])
              ]).validate(testProject.io.path);
            });
          }
        });
      });
    }
  });
}

Future<d.DirectoryDescriptor> createTestProject({
  required bool mockDependencies,
  String? content,
  bool append = false,
}) async {
  final d.DirectoryDescriptor testProject;
  switch (mockDependencies) {
    case true:
      testProject = d.dir(
        'test_project',
        [
          d.file('pubspec.yaml', """
name: test_project

environment:
  sdk: ^3.3.0
  
dependencies:
  flutter:
    path: flutter
  shadcn_ui: 
    path: shadcn_ui

"""),
          d.dir("lib", [d.file("main.dart", "")]),
          d.dir("shadcn_ui", [
            d.file("pubspec.yaml", """
name: shadcn_ui

environment:
  sdk: ^3.3.0
  
dependencies:
  flutter:
    path: ../flutter
"""),
            d.dir("lib", [
              d.file("shadcn_ui.dart", """
import 'package:flutter/widgets.dart';
/// Class Docs
class ShadButton extends StatelessWidget {

  /// Field Docs
  final String text;

  /// Constructor Docs
  ShadButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
""")
            ])
          ]),
          d.dir("flutter", [
            d.file("pubspec.yaml", """
name: flutter

environment:
  sdk: ^3.3.0

"""),
            d.dir("lib", [
              d.file("flutter.dart", """
export 'cupertino.dart';
export 'material.dart';
export 'widgets.dart';
"""),
              d.file("cupertino.dart", """
import 'package:flutter/widgets.dart';

class CupertinoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
"""),
              d.file("material.dart", """
import 'package:flutter/widgets.dart';

class ElevatedButton extends Widget {
  ElevatedButton(String text);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
"""),
              d.file("widgets.dart", """
class BuildContext {}

abstract class Widget {
  const Widget();
  Widget build(BuildContext context);
}

abstract class StatelessWidget extends Widget {
  const StatelessWidget();
  Widget build(BuildContext context);
}

class Shader {}

class Rect {}

class Container extends Widget {
  Container();
  @override
  Widget build(BuildContext context) {
    return this;
  }
}
""")
            ])
          ])
        ],
      );
    case false:
      testProject = d.dir(
        'test_project',
        [
          d.file('pubspec.yaml', """
name: test_project

environment:
  sdk: ^3.3.0
  flutter: ">=2.0.0"
  
dependencies:
  flutter:
    sdk: flutter
  shadcn_ui: ^0.12.0
"""),
          d.dir("lib", [d.file("main.dart", "")])
        ],
      );
  }
  await testProject.create();
  final result = Process.runSync(
    'dart',
    ['pub', 'get', mockDependencies ? "--offline" : ""],
    workingDirectory: p.normalize(testProject.io.path),
  );
  d.sandbox;
  final prevCurrentDir = Directory.current;
  Directory.current = testProject.io.path;
  addTearDown(() {
    Directory.current = prevCurrentDir;
  });

  expect(result.exitCode, equals(0), reason: result.stderr);
  if (content != null) {
    testProject.pubspec.writeAsStringSync(content,
        mode: append ? FileMode.append : FileMode.write);
  }
  return testProject;
}

extension on d.DirectoryDescriptor {
  File get pubspec => File(p.join(io.path, 'pubspec.yaml'));
}
