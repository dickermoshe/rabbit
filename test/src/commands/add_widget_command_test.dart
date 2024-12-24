import 'dart:io';

import 'package:mason_logger/mason_logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:widget_wrapper/src/command_runner.dart';
import 'package:widget_wrapper/src/commands/messages.dart';
import 'package:path/path.dart' as p;

class _MockLogger extends Mock implements Logger {}

class _MockProgress extends Mock implements Progress {}

String _basePubspecContent(bool isMocked) => '''
name: ${isMocked ? 'test_project_mock_flutter' : 'test_project_flutter'}

environment:
  sdk: ^3.5.0
  ${isMocked ? '' : 'flutter: ">=2.0.0"'}
  

dependencies:
  flutter:
    ${isMocked ? 'path: flutter' : 'sdk: flutter'}
    

dev_dependencies:
  widget_wrapper:
    path: ../..
''';

void main() {
  final testProjects = [
    (
      dir:
          Directory(p.join(Directory.current.path, 'test_projects', 'flutter')),
      isMocked: false
    ),
    (
      dir: Directory(
          p.join(Directory.current.path, 'test_projects', 'mock_flutter')),
      isMocked: true
    )
  ];

  group('test add widget', () {
    late Logger logger;
    late WidgetWrapperCommandRunner commandRunner;
    File pubspecFile() {
      return File(p.join(Directory.current.path, 'pubspec.yaml'));
    }

    setUp(() {
      logger = _MockLogger();
      commandRunner = WidgetWrapperCommandRunner(logger: logger);
      Directory.current =
          Directory.systemTemp.createTempSync('widget_wrapper_test');
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
    });

    test('must find pubspec.yaml', () async {
      final result = await commandRunner.run(['generate']);
      expect(result, equals(ExitCode.usage.code));
      verify(
        () => logger.err(
          pubspecMissingError,
        ),
      ).called(1);
    });

    test('must have flutter', () async {
      pubspecFile().writeAsStringSync('''
name: widget_wrapper
version: 0.0.1
''');
      final result = await commandRunner.run(['generate']);

      expect(result, equals(ExitCode.usage.code));
      verify(
        () => logger.err(
          flutterMissingError,
        ),
      ).called(1);
    });

    test('bad widget_wrapper config', () async {
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
    - 1: invalid_widget
''',
        '''
name: widget_wrapper
version: 0.0.1
dependencies:
  flutter:
    path: flutter
widget_wrapper:
  widgets:
    - hllo: invalid_widget
'''
      ];
      for (final config in badConfigs) {
        pubspecFile().writeAsStringSync(config);
        final result = await commandRunner.run(['generate']);
        expect(result, equals(ExitCode.usage.code));
      }
      verify(
        () => logger.err(
          invalidConfig,
        ),
      ).called(badConfigs.length);
    });
    test('good config', () async {
      final badConfigs = [
        '''
name: widget_wrapper
version: 0.0.1
dependencies:
  flutter:
    path: flutter
    
widget_wrapper:
  widgets:
    - hello: 
        - widget
'''
      ];
      for (final config in badConfigs) {
        pubspecFile().writeAsStringSync(config);
        final result =
            await commandRunner.run(['generate', '--validate_config']);
        expect(result, equals(ExitCode.success.code));
      }
    });

    group("parse widgets and generate", () {
      for (final (dir: dir, isMocked: isMocked) in testProjects) {
        group(isMocked ? "mocked flutter" : "real flutter", () {
          final basePubspec = _basePubspecContent(isMocked);

          setUp(() {
            Directory.current = dir;
          });
          setUpAll(() {
            Directory.current = dir;

            Process.runSync('dart', ['pub', 'get'], runInShell: true);
          });

          tearDownAll(() {
            pubspecFile().writeAsStringSync(basePubspec);
          });

          test('bad library', () async {
            pubspecFile().writeAsStringSync(basePubspec +
                '''
widget_wrapper:
  widgets:
    - flutter:
      - invalid_widget
''');
            final result =
                await commandRunner.run(['generate', "--validate_libraries"]);
            expect(result, equals(ExitCode.usage.code));
            verify(
              () => logger.err(invalidLibraryError("flutter")),
            ).called(1);
          });
          test('good library', () async {
            pubspecFile().writeAsStringSync(basePubspec +
                '''
widget_wrapper:
  widgets:
    - package:flutter/material.dart:
      - foo
    - package:flutter/cupertino.dart: all
''');
            final result =
                await commandRunner.run(['generate', "--validate_libraries"]);
            expect(result, equals(ExitCode.success.code));
          });
          test('bad widget', () async {
            pubspecFile().writeAsStringSync(basePubspec +
                '''
widget_wrapper:
  widgets:
    - "package:flutter/material.dart":
      - invalid_widget
''');
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.usage.code));

            verify(
              () => logger.err(widgetNotFound(
                  "package:flutter/material.dart", "invalid_widget")),
            ).called(1);
          });
          test('good widget', () async {
            pubspecFile().writeAsStringSync(basePubspec +
                '''
widget_wrapper:
  widgets:
    - "package:flutter/material.dart": all
''');
            final result = await commandRunner.run(['generate']);
            expect(result, equals(ExitCode.success.code));
          });
        });
      }
    });
  });
}
