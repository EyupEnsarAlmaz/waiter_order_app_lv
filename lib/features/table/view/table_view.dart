import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_table_dialog.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class TableView extends StatelessWidget {
  TableView({super.key});

  final navigator = NavigationService.shared;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TableBloc()..add(const TableEvent.getTable()),
      child: Scaffold(
          appBar: _appBar(context),
          body: Center(
            child: Column(
              children: [
                BlocConsumer<TableBloc, TableState>(
                  listener: (context, state) {
                    if (state.status.isSuccess) {
                      context
                          .read<TableBloc>()
                          .add(const TableEvent.getTable());
                    }
                  },
                  builder: (context, state) {
                    return tableList(context, state);
                  },
                )
              ],
            ),
          )),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
          title: Text(LocaleKeys.tableList.tr(),
              style: TextStyle(fontSize: context.titleLarge.fontSize)),
          centerTitle: true,
        );
  }

  SizedBox tableList(BuildContext context, TableState state) {
    return SizedBox(
                    width: context.width(0.98),
                    height: context.height(0.80),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: state.tableList?.length,
                      itemBuilder: (context, index) {
                        final tableList = state.tableList?[index];
                        return Center(
                          child: Card(
                            color: const Color(0xFF1A1B23),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () async {
                                    await CustomTableDialog.shared
                                        .showAlertDialog(
                                            context,
                                            tableList!.tableNumber,
                                            tableList);
                                  },
                                  child: Container(
                                    color: state.tableList?[index].isOpen ??
                                            false
                                        ? Colors.red
                                        : Colors.green,
                                    height: context.height(0.20),
                                    width: context.width(0.95),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(tableList?.tableNumber
                                                  .toString() ??
                                              ""),
                                          context.sizedboxHeight(0.01),
                                          state.tableList?[index].isAway ??
                                                  true
                                              ? Text(LocaleKeys
                                                  .tablestatusAway
                                                  .tr())
                                              : Text(LocaleKeys
                                                  .tablestatusnotAway
                                                  .tr())
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
  }
}
