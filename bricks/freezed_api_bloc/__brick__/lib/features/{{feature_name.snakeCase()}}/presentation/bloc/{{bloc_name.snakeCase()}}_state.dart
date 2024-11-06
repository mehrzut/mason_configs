part of '{{bloc_name.snakeCase()}}_bloc.dart';

@freezed
class {{bloc_name.pascalCase()}}State with _${{bloc_name.pascalCase()}}State {
  factory {{bloc_name.pascalCase()}}State.initial() = _InitialState;
  factory {{bloc_name.pascalCase()}}State.loading() = _LoadingState;
  factory {{bloc_name.pascalCase()}}State.success({required dynamic data}) = _SuccessState;
  factory {{bloc_name.pascalCase()}}State.failed({required Failure failure}) = _FailedState;

  {{bloc_name.pascalCase()}}State._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
  );
}
