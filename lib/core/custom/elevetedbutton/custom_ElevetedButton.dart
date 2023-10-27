import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/bloc/register_bloc_bloc.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/components/radiolisttile/bloc/radio_list_tile_bloc.dart';

class CustomElevetedButton extends StatelessWidget {
  CustomElevetedButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.top(0.015)),
        ))),
        onPressed: onPressed,
        child: Text(text.tr()));
  }
}
