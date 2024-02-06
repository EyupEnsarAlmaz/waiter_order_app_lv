import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/custom_Listtile.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/detail_custom_listtile.dart';
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
                  itemCount: state.basketMap!.length,
                  itemBuilder: (context, index) {
                    int tableNumber = state.basketMap!.keys.elementAt(index);
                    List<FoodModel>? foodList = state.basketMap![tableNumber];
                    if (foodList != null && foodList.isNotEmpty) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          for (FoodModel foodItem in foodList)
                            Card(
                              color: Color(0xFF1A1B23),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  if (foodItem.foodName == "dashline")
                                    Text(
                                      "-----------------------",
                                      style: TextStyle(fontSize: 30),
                                    )
                                  else
                                    CustomDetailListtile(
                                      onTapAdd: () {
                                        context.read<FoodBasketBloc>().add(
                                            FoodBasketEvent.addBasketFood(
                                                foodItem, tableNumber));
                                      },
                                      image: Image.network(
                                        foodItem.foodImage!,
                                        fit: BoxFit.fill,
                                      ),
                                      foodName: foodItem.foodName!,
                                      price: "${foodItem.price!} €",
                                      onTapRemove: () {
                                        context.read<FoodBasketBloc>().add(
                                            FoodBasketEvent.removeBasketFood(
                                                foodItem, tableNumber));
                                      },
                                      choosenSide: foodItem.choosenSide != null
                                          ? Text(
                                              foodItem.choosenSide!,
                                              style: TextStyle(fontSize: 20),
                                            )
                                          : SizedBox(),
                                      foodContent: () {},
                                    ),
                                ],
                              ),
                            ),
                          SizedBox(
                              height: 10), // Optional spacing between items
                        ],
                      );
                    } else {
                      // Handle the case where foodList is null or empty
                      return SizedBox.shrink();
                    }
                  },
                ),
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
      } else {
        return Text("Error fetching data");
      }
    },
  );
}
