import 'package:firebase_auth/firebase_auth.dart';
import 'package:waiter_order_app_lv/core/error/custom_error.dart';
import 'package:waiter_order_app_lv/core/error/result_types/result/result.dart';
import 'package:waiter_order_app_lv/features/auth/datasource/auth_datasource.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/model/login_model.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/model/register_model.dart';

class AuthRepository {
  static final shared = AuthRepository._();
  AuthRepository._();

  final _authDataSource = AuthDataSource.shared;

  Future<Result<User?>?> login({required LoginModel loginModel}) async {
    try {
      var response = await _authDataSource.login(loginModel: loginModel);
      return Result.success(response);
    } catch (e) {
      return Result.failure(CustomFailure(message: "$e"));
    }
  }

  Future<Result<User?>?> register({required RegisterModel registerModel}) async {
    try {
      var response =
          await _authDataSource.register(registerModel: registerModel);
      return Result.success(response);
    } catch (e) {
      return Result.failure(CustomFailure(message: "$e"));
    }
  }

  Future<Result> logout() async {
    try {
      await _authDataSource.logout();
      return const Result.success(true);
    } catch (e) {
      return Result.failure(CustomFailure(message: "$e"));
    }
  }

  Future<Result> isSignedIn() async {
    try {
      await _authDataSource.isSignedIn();
      return const Result.success(true);
    } catch (e) {
      return Result.failure(CustomFailure(message: "$e"));
    }
  }

  Future<Result> getUser() async {
    try {
      await _authDataSource.getUser();
      return const Result.success(true);
    } catch (e) {
      return Result.failure(CustomFailure(message: "$e"));
    }
  }
}
