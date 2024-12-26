// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map json) => $checkedCreate(
      'Config',
      json,
      ($checkedConvert) {
        final val = Config(
          prefix: $checkedConvert('prefix', (v) => v as String? ?? "\$"),
          widgets: $checkedConvert(
              'widgets',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(k as String,
                        (e as List<dynamic>).map((e) => e as String).toSet()),
                  ) ??
                  const {}),
          outputDir: $checkedConvert(
              'output_dir', (v) => v as String? ?? "lib/src/rabbit"),
          docs: $checkedConvert('docs', (v) => v as bool? ?? false),
          addImports:
              $checkedConvert('add_imports', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'outputDir': 'output_dir',
        'addImports': 'add_imports'
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'prefix': instance.prefix,
      'widgets': instance.widgets.map((k, e) => MapEntry(k, e.toList())),
      'output_dir': instance.outputDir,
      'docs': instance.docs,
      'add_imports': instance.addImports,
    };

RootConfig _$RootConfigFromJson(Map json) => $checkedCreate(
      'RootConfig',
      json,
      ($checkedConvert) {
        final val = RootConfig(
          widgetWrapper:
              $checkedConvert('rabbit', (v) => Config.fromJson(v as Map)),
        );
        return val;
      },
      fieldKeyMap: const {'widgetWrapper': 'rabbit'},
    );

Map<String, dynamic> _$RootConfigToJson(RootConfig instance) =>
    <String, dynamic>{
      'rabbit': instance.widgetWrapper.toJson(),
    };
