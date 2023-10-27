import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/enum/auth_result_enum.dart';
import 'package:waiter_order_app_lv/core/helpers/auth/auth_exception_helper.dart';
import 'package:waiter_order_app_lv/features/auth/datasource/auth_datasource.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/model/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBloc() : super(const LoginBlocState()) {
    on<_LoginSubmitted>(_loginSubmitted);
    on<_AuthLoggedIn>(_userLoggedIn);
    on<_AuthLoggedOut>(_userLogout);
  }
  final _authDatasource = AuthDataSource.shared;
  AuthResultStatus? _status;

  Future<void> _loginSubmitted(_LoginSubmitted event, Emitter emit) async {
    try {
      var user = await _authDatasource.login(
          loginModel:
              LoginModel(email: event.email!, password: event.password!));
      emit(state.copyWith(status: LoginStatus.loading));
      if (user != null) {
        emit(state.copyWith(status: LoginStatus.success));
      }
    } catch (error) {
      print(error);
      _status = AuthExceptionHandler.handleException(error);
      emit(state.copyWith(status: LoginStatus.failure, errorMesage: error));
    }
  }

  Future<void> _userLoggedIn(_AuthLoggedIn event, Emitter emit) async {
    final isSignedIn = await _authDatasource.isSignedIn();
    if (isSignedIn) {
      final firebaseUser = await _authDatasource.getUser();
      emit(state.copyWith(status: LoginStatus.success, user: firebaseUser));
    } else {
      emit(state.copyWith(status: LoginStatus.noUser));
    }
  }

  Future<void> _userLogout(_AuthLoggedOut event, Emitter emit) async {
    emit(state.copyWith(status: LoginStatus.logout));
    await _authDatasource.logout();
  }
}
