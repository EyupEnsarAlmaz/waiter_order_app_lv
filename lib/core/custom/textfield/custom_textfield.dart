import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.isObsecure,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String hintText;
  final bool isObsecure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height(0.062),
      width: context.height(0.41),
      child: TextField(
        obscureText: isObsecure,
        enableSuggestions: false,
        autocorrect: false,
        controller: textEditingController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.height(0.02)),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
