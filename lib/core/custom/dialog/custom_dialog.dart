import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';

class CustomDialog {
  String? choosenValue;
  CustomDialog._();
  static final shared = CustomDialog._();
  final navigation = NavigationService.shared;
  Future<void> showAlertDialog<T>(
      {required BuildContext context,
      required List<T>? items,
      required String? Function(T?) getName,
      required String titleText,
      required void Function()? onPressed}) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            title: Text(titleText),
            content: Container(
              height: 300,
              width: 300,
              child: ListView.builder(
                  itemCount: items?.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: context.height(0.1),
                      width: context.width(0.15),
                      child: TextButton(
                          child: Text(
                            getName(items?[index]) ?? "",
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            String? chooseValue = getName(items?[index]);
                            choosenValue = chooseValue;
                            onPressed!();
                            navigation.pop();
                          }),
                    );
                  }),
            ));
      },
    );
  }
}
