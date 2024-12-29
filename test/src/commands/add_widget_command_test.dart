import 'dart:io';

import 'package:mason_logger/mason_logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:rabbit/src/command_runner.dart';
import 'package:rabbit/src/commands/messages.dart';
import 'package:path/path.dart' as p;
import 'package:test_descriptor/test_descriptor.dart' as d;

class _MockLogger extends Mock implements Logger {}

class _MockProgress extends Mock implements Progress {}

final projectDir = Directory.current;
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
name: rabbit
version: 0.0.1
''');
          final result = await commandRunner.run(['generate']);
          expect(result, equals(ExitCode.usage.code));
          verify(() => logger.err(flutterMissingError)).called(1);
        });

        test('bad rabbit config', () async {
          final testProject =
              await createTestProject(mockDependencies: isMocked);

          final badConfigs = [
            '''
name: rabbit
version: 0.0.1
dependencies:
  flutter:
    path: flutter
''',
            '''
name: rabbit
version: 0.0.1
dependencies:
  flutter:
    path: flutter
rabbit:
''',
            '''
name: rabbit
version: 0.0.1
dependencies:
  flutter:
    path: flutter
rabbit:
  widgets:
    1: invalid_widget
''',
            '''
name: rabbit
version: 0.0.1
dependencies:
  flutter:
    path: flutter
rabbit:
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
name: rabbit
version: 0.0.1
dependencies:
  flutter:
    path: flutter

rabbit:
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
rabbit:
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

        group("validate wrapper", () {
          test('bad widget', () async {
            await createTestProject(
                mockDependencies: isMocked,
                content: '''
rabbit:
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
rabbit:
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.success.code));

            if (isMocked) {
              await d.dir("lib", [
                d.dir("src", [
                  d.dir("rabbit", [
                    d.dir("shadcn_ui", [
                      d.file("shad_button.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/widgets.dart';

class \$ShadButton extends StatelessWidget {
  const \$ShadButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
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
rabbit:
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
rabbit:
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
                  d.dir("rabbit", [
                    d.dir("shadcn_ui", [
                      d.file("shad_button.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/widgets.dart';

class \$ShadButton extends StatelessWidget {
  const \$ShadButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
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
rabbit:
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
                      d.file("shad_button.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/widgets.dart';

class \$ShadButton extends StatelessWidget {
  const \$ShadButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
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

          if (isMocked) {
            test('custom prefix', () async {
              final testProject =
                  await createTestProject(mockDependencies: isMocked);

              testProject.pubspec.writeAsStringSync('''
rabbit:
  prefix: My
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
              final result = await commandRunner.run(['generate']);
              expect(result, equals(ExitCode.success.code));

              await d.dir("lib", [
                d.dir("src", [
                  d.dir("rabbit", [
                    d.dir("shadcn_ui", [
                      d.file("shad_button.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/widgets.dart';

class MyShadButton extends StatelessWidget {
  const MyShadButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
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
rabbit:
  docs: true
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
''', mode: FileMode.append);
              final result = await commandRunner.run(['generate']);
              expect(result, equals(ExitCode.success.code));

              await d.dir("lib", [
                d.dir("src", [
                  d.dir("rabbit", [
                    d.dir("shadcn_ui", [
                      d.file("shad_button.dart",
                          """import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/widgets.dart';

/// Class Docs
class \$ShadButton extends StatelessWidget {
  /// Constructor Docs
  const \$ShadButton({
    super.key,
    required this.text,
  });

  /// Field Docs
  final String text;

  @override
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

            test('pipeable', () async {
              final testProject =
                  await createTestProject(mockDependencies: isMocked);

              testProject.pubspec.writeAsStringSync('''
rabbit:
  pipeable: true
  widgets:
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton1
      - ShadButton2
''', mode: FileMode.append);
              final result = await commandRunner.run(['generate']);
              expect(result, equals(ExitCode.success.code));
              await d.dir("lib", [
                d.dir("src", [
                  d.dir("rabbit", [
                    d.dir("shadcn_ui", [
                      d.file("shad_button1.dart", """
import 'package:rabbit/pipeable.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class \$ShadButton1 extends PipeableWidget<Widget> {
  \$ShadButton1({
    super.key,
    @RequiredOrPiped()
    super.child = const TemporaryWidget(name: '\\\$ShadButton1'),
  });

  @override
  Widget build(BuildContext context) {
    return ShadButton1(child: child);
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
  rabbit:
    path: rabbit
"""),
          d.dir("lib", [d.file("main.dart", "")]),
          d.dir("rabbit", [
            d.file("pubspec.yaml", """
name: rabbit

environment:
  sdk: ^3.3.0
"""),
            d.dir("lib", [
              d.file("pipeable.dart", """
import 'package:flutter/widgets.dart';
class RequiredOrPiped {
  const RequiredOrPiped();
}

class TemporaryWidget extends StatelessWidget {
  const TemporaryWidget({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) =>
      throw StateError('The widget \$name requires that a child be provided.');
}

// ignore: must_be_immutable
abstract class PipeableWidget<T extends Widget?> extends StatelessWidget {
  PipeableWidget({super.key, T? child}) {
    if (child != null) this.child = child;
  }
  T? _child;
  set child(T value) => _child = value;
  T get child => _child as T;
  PipeableWidget operator >>(PipeableWidget widget) {
    setWidget(widget);
    setWidget = widget.setWidget;
    return this;
  }

  Widget operator >>>(Widget widget) {
    setWidget(widget);
    return this;
  }

  late Function(Widget) setWidget = (widget) => child = widget as T;
}
"""),
            ]),
          ]),
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
  const ShadButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ShadButton1 extends StatelessWidget {

  /// Field Docs
  final Widget child;

  /// Constructor Docs
  const ShadButton1({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ShadButton2 extends StatelessWidget {

  /// Field Docs
  final Widget? child;

  /// Constructor Docs
  const ShadButton2({this.child});

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
class Key {}
abstract class Widget {
  const Widget({ this.key });
  final Key? key;
  Widget build(BuildContext context);
}

abstract class StatelessWidget extends Widget {
  const StatelessWidget({ super.key });
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
  rabbit:
    path: ${projectDir.path.replaceAll(r"\", "/")}
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
