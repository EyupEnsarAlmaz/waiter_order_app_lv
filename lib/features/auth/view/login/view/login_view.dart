import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/alert/custom_alertdialog.dart';
import 'package:waiter_order_app_lv/core/custom/elevetedbutton/custom_ElevetedButton.dart';
import 'package:waiter_order_app_lv/core/custom/textfield/custom_textfield.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/helpers/auth/auth_exception_helper.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _navigation = NavigationService.shared;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          context.hideKeyboard();
        },
        child: BlocConsumer<LoginBloc, LoginBlocState>(
          listener: (context, state) {
            if (state.status.isFailure) {
              final errorMsg = AuthExceptionHandler.generateExceptionMessage(
                  state.errorMesage);
              context.showCustomDialog(
                title: errorMsg,
                content: errorMsg,
                textbuttonText: LocaleKeys.closeText.tr(),
                onPressed: () {
                  _navigation.pop();
                },
              );
            } else if (state.status.isSuccess) {
              _emailController.clear();
              _passwordController.clear();
              _navigation.navigateTo(path: KRoute.TABLE_PAGE);
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status.isLoading) {
              const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  context.sizedboxHeight(0.2),
                  Text(LocaleKeys.welcome.tr(),
                      style:
                          TextStyle(fontSize: context.headlineSmall.fontSize)),
                  context.sizedboxHeight(0.01),
                  Text(LocaleKeys.loginDescribe.tr(),
                      style: TextStyle(fontSize: context.titleSmall.fontSize)),
                  context.sizedboxHeight(0.05),
                  CustomTextfield(
                      onChanged: (s) {},
                      hintText: LocaleKeys.email.tr(),
                      textEditingController: _emailController,
                      isObsecure: false),
                  context.sizedboxHeight(0.02),
                  CustomTextfield(
                    onChanged: (s) {},
                    hintText: LocaleKeys.password.tr(),
                    textEditingController: _passwordController,
                    isObsecure: true,
                  ),
                  context.sizedboxHeight(0.02),
                  CustomElevetedButton(
                      text: LocaleKeys.logIn.tr(),
                      onPressed: () {
                        if (_emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          context.read<LoginBloc>().add(
                              LoginBlocEvent.loginSubmitted(
                                  _emailController.text,
                                  _passwordController.text));
                        } else {
                          context.showCustomDialog(
                            title: LocaleKeys.fill.tr(),
                            content: LocaleKeys.fillTheForm.tr(),
                            textbuttonText: LocaleKeys.closeText.tr(),
                            onPressed: () {
                              _navigation.pop();
                            },
                          );
                        }
                      }),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(LocaleKeys.haveAnAccount.tr()),
                    TextButton(
                        onPressed: () {
                          _navigation.navigaToClear(path: KRoute.REGISTER);
                        },
                        child: Text(LocaleKeys.signUp.tr())),
                  ]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
