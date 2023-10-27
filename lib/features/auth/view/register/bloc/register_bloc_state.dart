part of 'register_bloc_bloc.dart';

enum RegisterStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == RegisterStatus.initial;
  bool get isLoading => this == RegisterStatus.loading;
  bool get isSuccess => this == RegisterStatus.success;
  bool get isFailure => this == RegisterStatus.failure;
}

@freezed
class RegisterBlocState with _$RegisterBlocState {
  const factory RegisterBlocState({
    @Default(RegisterStatus.initial) RegisterStatus status,
    RegisterModel? registerModel,
    Object? errorMesage,
  }) = _RegisterBlocState;
}
