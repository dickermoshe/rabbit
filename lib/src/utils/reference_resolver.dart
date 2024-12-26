import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/type_system.dart';
import 'package:code_builder/code_builder.dart' as cb;

/////////////////////////////////////////////////////
/// The below has been copied form the Mockito package.
/////////////////////////////////////////////////////
cb.Reference typeReference(DartType type, TypeSystem typeSystem,
    {bool forceNullable = false, bool overrideVoid = false}) {
  if (overrideVoid && type is VoidType) {
    return cb.TypeReference((b) => b..symbol = 'dynamic');
  }
  if (type is InvalidType) {
    return cb.TypeReference((b) => b..symbol = 'dynamic');
  }
  if (type is InterfaceType) {
    return cb.TypeReference((b) {
      final isNullable = !type.isDartCoreNull &&
          (forceNullable ||
              type.nullabilitySuffix == NullabilitySuffix.question);
      b
        ..symbol = type.element.name
        ..isNullable = isNullable
        ..url = _typeImport(type.element)
        ..types.addAll(
            type.typeArguments.map((e) => typeReference(e, typeSystem)));
    });
  } else if (type is FunctionType) {
    final alias = type.alias;
    if (alias == null || alias.element.isPrivate) {
      // [type] does not refer to a type alias, or it refers to a private type
      // alias; we must instead write out its signature.
      return cb.FunctionType((b) =>
          // _withTypeParameters(type.typeFormals,
          () {
            b
              ..isNullable =
                  forceNullable || typeSystem.isPotentiallyNullable(type)
              ..returnType = typeReference(type.returnType, typeSystem)
              ..requiredParameters.addAll(type.normalParameterTypes
                  .map((e) => typeReference(e, typeSystem)))
              ..optionalParameters.addAll(type.optionalParameterTypes
                  .map((e) => typeReference(e, typeSystem)));
            for (final parameter
                in type.parameters.where((p) => p.isOptionalNamed)) {
              b.namedParameters[parameter.name] =
                  typeReference(parameter.type, typeSystem);
            }
            for (final parameter
                in type.parameters.where((p) => p.isRequiredNamed)) {
              b.namedRequiredParameters[parameter.name] =
                  typeReference(parameter.type, typeSystem);
            }
          }());
      // );
    }
    return cb.TypeReference((b) {
      b
        ..symbol = alias.element.name
        ..url = _typeImport(alias.element)
        ..isNullable = forceNullable || typeSystem.isNullable(type);
      for (final typeArgument in alias.typeArguments) {
        b.types.add(typeReference(typeArgument, typeSystem));
      }
    });
  } else if (type is TypeParameterType) {
    return cb.TypeReference((b) {
      b
        ..symbol = type.element.name
        ..isNullable = forceNullable || typeSystem.isNullable(type);
    });
  } else if (type is RecordType) {
    return cb.RecordType((b) => b
      ..positionalFieldTypes.addAll([
        for (final f in type.positionalFields) typeReference(f.type, typeSystem)
      ])
      ..namedFieldTypes.addAll({
        for (final f in type.namedFields)
          f.name: typeReference(f.type, typeSystem)
      })
      ..isNullable = forceNullable || typeSystem.isNullable(type));
  } else {
    return cb.refer(type.getDisplayString(), _typeImport(type.element));
  }
}

String? _typeImport(
  Element? element,
) {
  // For type variables, no import needed.
  if (element is TypeParameterElement) return null;

  // For types like `dynamic`, return null; no import needed.
  if (element?.library == null) return null;
  return element!.library!.source.uri.toString();
}

/////////////////////////////////////////////////////
/// The above has been copied form te Mockito package.
/////////////////////////////////////////////////////
