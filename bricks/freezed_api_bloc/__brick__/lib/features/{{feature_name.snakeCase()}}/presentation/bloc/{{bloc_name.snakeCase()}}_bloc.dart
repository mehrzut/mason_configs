import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/{{usecase_name.snakeCase()}}.dart';

part '{{bloc_name.snakeCase()}}_event.dart';
part '{{bloc_name.snakeCase()}}_state.dart';
part '{{bloc_name.snakeCase()}}_bloc.freezed.dart';

@injectable
class {{bloc_name.pascalCase()}}Bloc extends Bloc<{{bloc_name.pascalCase()}}Event, {{bloc_name.pascalCase()}}State> {
  final {{usecase_name.pascalCase()}} _{{usecase_name.camelCase()}};
  {{bloc_name.pascalCase()}}Bloc(this._{{usecase_name.camelCase()}}) : super(_InitialState()) {
    on<_{{usecase_name.pascalCase()}}Event>(_on{{usecase_name.pascalCase()}}Event);
  }

  Future<FutureOr<void>> _on{{usecase_name.pascalCase()}}Event(
      _{{usecase_name.pascalCase()}}Event event, Emitter<{{bloc_name.pascalCase()}}State> emit) async {
    emit(_LoadingState());
    final response = await _{{usecase_name.camelCase()}}(Params());
    final newState = response.when(
      success: (data) => _SuccessState(data: data),
      failed: (failure) => _FailedState(failure: failure),
    );
    emit(newState);
  }
}
