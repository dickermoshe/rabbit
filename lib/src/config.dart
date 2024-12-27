// This file is "main.dart"
import 'package:json_annotation/json_annotation.dart';

part 'config.g.dart';

@JsonSerializable()
class Config {
  final String prefix;
  final Map<String, Set<String>> widgets;
  @JsonKey(name: 'output_dir')
  final String outputDir;
  final bool docs;
  @JsonKey(name: 'add_imports')
  final bool addImports;
  final bool pipeable;
  Config({
    this.prefix = "\$",
    this.widgets = const {},
    this.outputDir = "lib/src/rabbit",
    this.docs = false,
    this.addImports = false,
    this.pipeable = false,
  });

  factory Config.fromJson(Map<dynamic, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}

@JsonSerializable()
class RootConfig {
  @JsonKey(name: 'rabbit')
  final Config widgetWrapper;
  RootConfig({required this.widgetWrapper});
  factory RootConfig.fromJson(Map<dynamic, dynamic> json) =>
      _$RootConfigFromJson(json);
  Map<String, dynamic> toJson() => _$RootConfigToJson(this);
}
