import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class GroupedListviewItem extends StatelessWidget {
  List<DrinksModel> elements;

  GroupedListviewItem({super.key, required this.elements});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height(0.48),
      width: context.width(0.95),
      child: GroupedListView<DrinksModel, String>(
          elements: elements,
          groupBy: (DrinksModel drinksModel) => drinksModel.category!,
          groupComparator: (value1, value2) => value2.compareTo(value1),
          itemComparator: (DrinksModel element1, DrinksModel element2) =>
              element1.name!.compareTo(element2.name!),
          order: GroupedListOrder.DESC,
          groupSeparatorBuilder: (String value) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(value.toUpperCase())),
          itemBuilder: (context, element) {
            return BlocBuilder<TableBloc, TableState>(
              builder: (context, tablestate) {
                return Card(
                  child: SizedBox(
                    child: ListTile(
                      title: Text(
                        element.name!,
                        style: const TextStyle(color: KThemeColor.white),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              context.read<FoodBasketBloc>().add(
                                  FoodBasketEvent.addBasketItem(
                                      element, tablestate.tableNumber));
                            },
                          ),
                          BlocBuilder<FoodBasketBloc, FoodBasketState>(
                            builder: (context, basketstate) {
                              return Text(
                                (basketstate.itemCountMap?[element.name] ?? 0)
                                    .toString(),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              context.read<FoodBasketBloc>().add(
                                  FoodBasketEvent.removeItemFromBasket(
                                      element, tablestate.tableNumber));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
