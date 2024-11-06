
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{entity_name.snakeCase()}}.freezed.dart';
{{#json_serialize}}part '{{entity_name.snakeCase()}}.g.dart';

@freezed
class {{entity_name.pascalCase()}} with  _${{entity_name.pascalCase()}} {
  factory {{entity_name.pascalCase()}}({
    required dynamic data
  }) = _{{entity_name.pascalCase()}};

  {{entity_name.pascalCase()}}._();

  {{#json_serialize}}factory {{entity_name.pascalCase()}}.fromJson(Map<String,dynamic> json)=>_${{entity_name.pascalCase()}}FromJson(json);
}
