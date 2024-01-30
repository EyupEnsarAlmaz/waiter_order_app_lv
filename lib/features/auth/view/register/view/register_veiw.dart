import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/alert/custom_alertdialog.dart';
import 'package:waiter_order_app_lv/core/custom/elevetedbutton/custom_ElevetedButton.dart';
import 'package:waiter_order_app_lv/core/custom/radiolisttile/custom_radiolisttile.dart';
import 'package:waiter_order_app_lv/core/custom/textfield/custom_textfield.dart';
import 'package:waiter_order_app_lv/core/error/custom_error.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/helpers/auth/auth_exception_helper.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/bloc/register_bloc_bloc.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/components/radiolisttile/bloc/radio_list_tile_bloc.dart';
import 'package:waiter_order_app_lv/features/splash/view/splash_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

final _emailcontroller = TextEditingController();
final _nameController = TextEditingController();
final _passwordcontroller = TextEditingController();
final _navigation = NavigationService.shared;
Role? _choosenRole;

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterBloc, RegisterBlocState>(
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
            _emailcontroller.clear();
            _passwordcontroller.clear();
            _nameController.clear();
            _choosenRole = null;
            const Center(
              child: CircularProgressIndicator(),
            );
            _navigation.navigateTo(path: KRoute.LOGIN_PAGE);
          } else if (state.status.isLoading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              context.hideKeyboard();
            },
            child: SingleChildScrollView(
              child: Center(
                child: Column(children: [
                  context.sizedboxHeight(0.12),
                  Text(LocaleKeys.createNewAccount.tr(),
                      style:
                          TextStyle(fontSize: context.headlineSmall.fontSize)),
                  Text(LocaleKeys.fillTheForm.tr(),
                      style: TextStyle(fontSize: context.titleSmall.fontSize)),
                  context.sizedboxHeight(0.02),
                  CustomTextfield(
                      onChanged: (s) {},
                      isObsecure: false,
                      textEditingController: _emailcontroller,
                      hintText: LocaleKeys.email.tr()),
                  context.sizedboxHeight(0.02),
                  CustomTextfield(
                      onChanged: (s) {},
                      isObsecure: true,
                      textEditingController: _passwordcontroller,
                      hintText: LocaleKeys.password.tr()),
                  context.sizedboxHeight(0.02),
                  CustomTextfield(
                      onChanged: (s) {},
                      isObsecure: false,
                      textEditingController: _nameController,
                      hintText: LocaleKeys.name.tr()),
                  context.sizedboxHeight(0.03),
                  Row(
                    children: [
                      context.sizedboxWidth(0.07),
                      _selectRoleText(context),
                    ],
                  ),
                  context.sizedboxHeight(0.02),
                  BlocBuilder<RadioListTileBloc, RadioListTileState>(
                    builder: (context, state) {
                      return _radiolistWaiter(context);
                    },
                  ),
                  BlocBuilder<RadioListTileBloc, RadioListTileState>(
                    builder: (context, state) {
                      return _radiolistKitchen(context);
                    },
                  ),
                  BlocBuilder<RadioListTileBloc, RadioListTileState>(
                    builder: (context, state) {
                      return _radiolistManager(context);
                    },
                  ),
                  BlocBuilder<RegisterBloc, RegisterBlocState>(
                    builder: (context, state) {
                      return _signUpButton(context);
                    },
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _haveanAccountText(context),
                        _loginpageButton(context)
                      ],
                    ),
                  )
                ]),
              ),
            ),
          );
        },
      ),
    );
  }

  Text _selectRoleText(BuildContext context) {
    return Text(LocaleKeys.selectRole.tr(),
        style: TextStyle(fontSize: context.titleMedium.fontSize));
  }

  TextButton _loginpageButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          _navigation.navigaToClear(path: KRoute.LOGIN_PAGE);
        },
        child: Text(
          LocaleKeys.logIn.tr(),
          style: TextStyle(
              fontSize: context.titleMedium.fontSize,
              color: KThemeColor.bluePrimary),
        ));
  }

  Text _haveanAccountText(BuildContext context) {
    return Text(LocaleKeys.haveAnAccount.tr(),
        style: TextStyle(fontSize: context.titleMedium.fontSize));
  }

  CustomElevetedButton _signUpButton(BuildContext context) {
    return CustomElevetedButton(
        text: LocaleKeys.signUp.tr(),
        onPressed: () async {
          if (_emailcontroller.text.isNotEmpty &&
              _passwordcontroller.text.isNotEmpty &&
              _nameController.text.isNotEmpty &&
              _choosenRole != null) {
            context.read<RegisterBloc>().add(
                RegisterBlocEvent.registerSubmitted(
                    _emailcontroller.text, _passwordcontroller.text));
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
        });
  }

  RadioListTile<Role> _radiolistManager(BuildContext context) {
    return RadioListTile(
      title: Text(LocaleKeys.manager.tr()),
      value: Role.manager,
      groupValue: _choosenRole,
      onChanged: (Role? value) {
        context
            .read<RadioListTileBloc>()
            .add(RadioListTileEvent.radioListTileSelected(value));
        _choosenRole = value;
      },
    );
  }

  RadioListTile<Role> _radiolistKitchen(BuildContext context) {
    return RadioListTile(
      title: Text(LocaleKeys.kitchen.tr()),
      value: Role.kitchen,
      groupValue: _choosenRole,
      onChanged: (Role? value) {
        context
            .read<RadioListTileBloc>()
            .add(RadioListTileEvent.radioListTileSelected(value));
        _choosenRole = value;
      },
    );
  }

  RadioListTile<Role> _radiolistWaiter(BuildContext context) {
    return RadioListTile(
      title: Text(LocaleKeys.waiter.tr()),
      value: Role.waiter,
      groupValue: _choosenRole,
      onChanged: (Role? value) {
        context
            .read<RadioListTileBloc>()
            .add(RadioListTileEvent.radioListTileSelected(value));
        _choosenRole = value;
      },
    );
  }
}
