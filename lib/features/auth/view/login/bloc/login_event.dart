part of 'login_bloc.dart';

@freezed
class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.loginSubmitted(String? email, String? password) =
      _LoginSubmitted;
  const factory LoginBlocEvent.autenticationLoggedIn() = _AuthLoggedIn;
  const factory LoginBlocEvent.autenticationLoggedOut() = _AuthLoggedOut;
}
