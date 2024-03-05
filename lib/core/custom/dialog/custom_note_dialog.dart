import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/onboard/view/onboard_view.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class CustomNoteDialog {
  CustomNoteDialog._();
  static final shared = CustomNoteDialog._();
  Future<void> showAlertDialog(
      BuildContext context, TextEditingController controller) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(LocaleKeys.enterNote.tr()),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  controller: controller,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            BlocBuilder<FoodBasketBloc, FoodBasketState>(
              builder: (context, state) {
                return TextButton(
                  child: Text(LocaleKeys.send.tr()),
                  onPressed: () {
                    context.read<FoodBasketBloc>().add(FoodBasketEvent.addNotes(
                        controller.text,
                        context.read<TableBloc>().state.tableNumber));
                    navigation.pop();
                  },
                );
              },
            ),
            TextButton(
              child: Text(LocaleKeys.exit.tr()),
              onPressed: () {
                navigation.pop();
              },
            ),
          ],
        );
      },
    );
  }
}
