part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  logout,
  noUser,
  failure;

  bool get isInitial => this == LoginStatus.initial;
  bool get isLoading => this == LoginStatus.loading;
  bool get isSuccess => this == LoginStatus.success;
  bool get isLogout => this == LoginStatus.logout;
  bool get isUser => this == LoginStatus.noUser;
  bool get isFailure => this == LoginStatus.failure;
}

@freezed
class LoginBlocState with _$LoginBlocState {
  const factory LoginBlocState({
    @Default(LoginStatus.initial) LoginStatus status,
    LoginModel? loginModel,
    User? user,
    Object? errorMesage,
  }) = _RegisterBlocState;
}
