import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/bloc/login_bloc.dart';
import 'package:waiter_order_app_lv/features/detail/view/detail_order_view.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/tabbar/bloc/tabbar_bloc.dart';
import 'package:waiter_order_app_lv/features/splash/view/splash_view.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class TableView extends StatelessWidget {
  TableView({super.key});

  final navigator = NavigationService.shared;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TableBloc()..add(const TableEvent.getTable()),
        ),
      ],
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            BlocConsumer<TableBloc, TableState>(
              listener: (context, state) {
                if (state.status.isSuccess) {
                  context.read<TableBloc>().add(TableEvent.getTable());
                }
              },
              builder: (context, state) {
                return Container(
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
                                  final response = await _showAlertDialog(
                                      context, tableList!.tableNumber);
                                },
                                child: Container(
                                  color: state.tableList?[index].isOpen ?? false
                                      ? Colors.red
                                      : Colors.green,
                                  height: 200,
                                  width: 400,
                                  child: Center(
                                    child: Text(
                                        tableList?.tableNumber.toString() ??
                                            ""),
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
              },
            )
          ],
        ),
      )),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context, int index) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        // <-- SEE HERE
        title: Text('Table ${index}'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Open Table'),
            onPressed: () {
              context.read<TableBloc>().add(TableEvent.openTable(true, index));
              navigation.pop();
              navigation.navigateTo(path: KRoute.FOOD_MENU);
            },
          ),
          TextButton(
            child: const Text('Close Table'),
            onPressed: () {
              context
                  .read<TableBloc>()
                  .add(TableEvent.closeTable(false, index));
              navigation.pop();
            },
          ),
          TextButton(
            child: const Text('Exit'),
            onPressed: () {
              navigation.pop();
            },
          ),
        ],
      );
    },
  );
}
