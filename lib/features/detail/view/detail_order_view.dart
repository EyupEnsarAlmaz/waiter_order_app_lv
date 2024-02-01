import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/custom_Listtile.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/network/firestore/basket_service/basket_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class DetailOrderView extends StatelessWidget {
  DetailOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          SizedBox(height: context.height(0.01)),
          Center(child: BlocBuilder<TableBloc, TableState>(
            builder: (context, state) {
              return Text(
                "Table Number => " + state.tableNumber.toString(),
                style: TextStyle(fontSize: 20),
              );
            },
          )),
          _listItem(),
          SizedBox(height: context.height(0.02)),
          BlocBuilder<TableBloc, TableState>(
            builder: (context, state) {
              return BlocBuilder<FoodBasketBloc, FoodBasketState>(
                builder: (context, basketbloc) {
                  return ElevatedButton(
                      onPressed: () {}, child: Text("Send Order"));
                },
              );
            },
          )
        ],
      )),
    );
  }
}

BlocBuilder<FoodBasketBloc, FoodBasketState> _listItem() {
  return BlocBuilder<FoodBasketBloc, FoodBasketState>(
    builder: (context, state) {
      if (state.status.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.status.isSuccess) {
        Map<String, List<FoodModel>> groupedItems = {};
        Set<String> uniqueFoodNames = Set();

        for (var entry in state.basketMap!.entries) {
          int tableNumber = entry.key;
          List<FoodModel>? foodList = entry.value;

          if (foodList != null) {
            for (var item in foodList) {
              if (!uniqueFoodNames.contains(item.foodName)) {
                uniqueFoodNames.add(item.foodName!);
                groupedItems[item.foodName] = [item];
              } else {
                groupedItems[item.foodName]!.add(item);
              }
            }
          }
        }
        return Container(
          width: context.width(0.99),
          height: context.height(0.60),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: groupedItems.length,
                    itemBuilder: (context, index) {
                      String itemName = groupedItems.keys.elementAt(index);
                      List<FoodModel> itemCount =
                          groupedItems.values.elementAt(index);
                      List<FoodModel> itemDetailsList = groupedItems[itemName]!;
                      return Center(
                        child: Card(
                          color: Color(0xFF1A1B23),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: <Widget>[
                              BlocBuilder<FoodBasketBloc, FoodBasketState>(
                                builder: (context, basketstate) {
                                  for (var itemDetails in itemDetailsList) {
                                    if (itemName == "dashline") {
                                      return Text(
                                        "-----------------------",
                                        style: TextStyle(fontSize: 30),
                                      );
                                    }
                                    return Column(
                                      children: [
                                        BlocBuilder<FoodBasketBloc,
                                            FoodBasketState>(
                                          builder: (context, tablestate) {
                                            return CustomListTile(
                                              onTapAdd: () {
                                                context
                                                    .read<FoodBasketBloc>()
                                                    .add(FoodBasketEvent
                                                        .addBasketFood(
                                                            itemDetails,
                                                            tablestate
                                                                .tableNumber));
                                              },
                                              image: Image.network(
                                                itemDetails.foodImage!,
                                                fit: BoxFit.fill,
                                              ),
                                              foodName: itemName,
                                              price: "${itemDetails.price} €",
                                              onTapRemove: () {
                                                context
                                                    .read<FoodBasketBloc>()
                                                    .add(FoodBasketEvent
                                                        .removeBasketFood(
                                                            itemDetails,
                                                            tablestate
                                                                .tableNumber));
                                              },
                                              piece: itemCount.length, foodContent: () {  },
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  }
                                  return Text("data");
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              context.sizedboxHeight(0.01),
              BlocBuilder<FoodBasketBloc, FoodBasketState>(
                builder: (context, basketstate) {
                  return Text(
                    basketstate.noteText ?? "",
                    style: TextStyle(fontSize: context.titleLarge.fontSize),
                  );
                },
              ),
            ],
          ),
        );
      }
      return Text("");
    },
  );
}
