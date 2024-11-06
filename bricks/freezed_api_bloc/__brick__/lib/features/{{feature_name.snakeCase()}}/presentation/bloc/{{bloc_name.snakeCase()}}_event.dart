part of '{{bloc_name.snakeCase()}}_bloc.dart';

@freezed
class {{bloc_name.pascalCase()}}Event with _${{bloc_name.pascalCase()}}Event {
  const factory {{bloc_name.pascalCase()}}Event.{{usecase_name.camelCase()}}({required dynamic data}) = _{{usecase_name.pascalCase()}}Event;
}
