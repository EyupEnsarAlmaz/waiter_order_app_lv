import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

import '../../../features/splash/view/splash_view.dart';
import '../../../features/table/model/table_model.dart';

class CustomTableDialog {
  CustomTableDialog._();
  static final shared = CustomTableDialog._();
  Future<void> showAlertDialog(
      BuildContext context, int index, TableModel? tableList) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Table $index'),
            content: SingleChildScrollView(
                child: Row(
              children: [
                SizedBox(
                  height: context.height(0.1),
                  width: context.width(0.15),
                  child: TextButton(
                    child: Text(LocaleKeys.openTable.tr()),
                    onPressed: () {
                      context
                          .read<TableBloc>()
                          .add(TableEvent.openTable(true, index));
                      navigation.pop();
                      navigation.navigateTo(path: KRoute.FOOD_MENU);
                    },
                  ),
                ),
                SizedBox(
                  height: context.height(0.1),
                  width: context.width(0.15),
                  child: TextButton(
                    child: Text(LocaleKeys.closeTable.tr()),
                    onPressed: () {
                      context
                          .read<TableBloc>()
                          .add(TableEvent.closeTable(false, index, false));
                      navigation.pop();
                    },
                  ),
                ),
                BlocBuilder<TableBloc, TableState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: context.height(0.1),
                      width: context.width(0.15),
                      child: TextButton(
                        child: Text(LocaleKeys.tableAway.tr()),
                        onPressed: () {
                          if (tableList?.isOpen == true &&
                              tableList?.isAway == false) {
                            context
                                .read<TableBloc>()
                                .add(TableEvent.isAway(index, true));
                          }

                          navigation.pop();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: context.height(0.1),
                  width: context.width(0.15),
                  child: TextButton(
                    child: Text(LocaleKeys.exit.tr()),
                    onPressed: () {
                      navigation.pop();
                    },
                  ),
                ),
              ],
            )));
      },
    );
  }
}
