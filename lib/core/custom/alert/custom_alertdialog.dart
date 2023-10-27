import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';

extension CustomDialogExtension on BuildContext {
  void showCustomDialog({
    required final String title,
    required final String content,
    required final String textbuttonText,
    required final Function()? onPressed,
  }) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(context.height(0.03)))),
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(child: Text(textbuttonText), onPressed: onPressed),
          ],
        );
      },
    );
  }
}
