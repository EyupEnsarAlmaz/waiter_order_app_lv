import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/enum/auth_result_enum.dart';
import 'package:waiter_order_app_lv/core/error/result_types/result/result.dart';
import 'package:waiter_order_app_lv/core/helpers/auth/auth_exception_helper.dart';
import 'package:waiter_order_app_lv/features/auth/datasource/auth_datasource.dart';
import 'package:waiter_order_app_lv/features/auth/repository/auth_repository.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/model/register_model.dart';

part 'register_bloc_event.dart';
part 'register_bloc_state.dart';
part 'register_bloc_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBloc() : super(const RegisterBlocState()) {
    on<_RegisterSubmitted>(_registerSubmitted);
  }
  final _authDatasource = AuthDataSource.shared;
  AuthResultStatus? _status;

  Future<void> _registerSubmitted(
      _RegisterSubmitted event, Emitter emit) async {
    emit(state.copyWith(status: RegisterStatus.initial));
    try {
      var user = await _authDatasource.register(
          registerModel:
              RegisterModel(email: event.email!, password: event.password!));
      emit(state.copyWith(status: RegisterStatus.loading));
      if (user != null) {
        emit(state.copyWith(status: RegisterStatus.success));
      }
    } catch (error) {
      print(error);
      _status = AuthExceptionHandler.handleException(error);
      emit(state.copyWith(status: RegisterStatus.failure, errorMesage: error));
    }
  }
}
