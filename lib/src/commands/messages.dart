const useDartExeError = 'It appears you are using the Flutter executable. '
    'Please note that this command is intended to be run with the Dart executable. \n'
    'e.g. dart run widget_wrapper generate';
const pubspecMissingError =
    'No pubspec.yaml file found in the current directory. '
    'Please ensure that you are running this command from the root of a Flutter project '
    'that contains a pubspec.yaml file.';
const flutterMissingError =
    'The pubspec.yaml file does not indicate that this is a Flutter project. '
    'Please ensure that you are running this command from the root of a Flutter project '
    'that contains the Flutter dependency in its pubspec.yaml file.';
const invalidConfig =
    'The pubspec.yaml file has an invalid widget_wrapper configuration. '
    'Visit https://pub.dev/packages/widget_wrapper for documentation how to setup widget_wrapper.';
String invalidLibraryError(String package) =>
    'The specified "$package" library could not be found. '
    'Please ensure that the package name is correct and that it is included in your dependencies. '
    'For example, if you are trying to use Flutter material components, you should include '
    '"package:flutter/material.dart"';
String widgetNotFound(String package, String widget) =>
    'The specified widget "$widget" could not be found in the package "$package". '
    'Please ensure that the widget name is correct and that it is included in the package.';
String overwriteFileError({required String file}) =>
    'The file "$file" already exists and cannot be overwritten. '
    'Please remove the file or use the --force flag to overwrite the file.';
