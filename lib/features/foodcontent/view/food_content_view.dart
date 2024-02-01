import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class FoodContentView extends StatelessWidget {
  FoodContentView({super.key, required this.foodModel});

  final navigation = NavigationService.shared;
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail", style: TextStyle(fontSize: 23)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  image: NetworkImage(foodModel.foodImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                border: Border.all(
                  color: Colors.red,
                  width: 4.0,
                ),
              ),
            ),
            BlocBuilder<TableBloc, TableState>(
              builder: (context, state) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<FoodBasketBloc>().add(
                            FoodBasketEvent.addBasketFood(
                                foodModel, state.tableNumber));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(16.0),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 15.0,
                      ),
                    ),
                    BlocBuilder<FoodBasketBloc, FoodBasketState>(
                      builder: (context, basketstate) {
                        int? itemCount = basketstate
                            .basketMap?[basketstate.tableNumber]
                            ?.where((item) => item == foodModel)
                            .length;
                        return Text(
                          itemCount?.toString() ?? "0",
                          style: TextStyle(fontSize: 23),
                        );
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<FoodBasketBloc>().add(
                            FoodBasketEvent.removeBasketFood(
                                foodModel, state.tableNumber));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(16.0),
                      ),
                      child: Icon(
                        Icons.remove,
                        size: 15.0,
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 10),
            Align(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      foodModel.category,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(foodModel.foodName, style: TextStyle(fontSize: 25)),
                    SizedBox(height: 10),
                    Text("${foodModel.price} €",
                        style: TextStyle(fontSize: 25)),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    Text(foodModel.content, style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
