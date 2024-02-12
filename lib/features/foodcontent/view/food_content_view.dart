import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_dialog.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';
import 'package:waiter_order_app_lv/features/onboard/view/onboard_view.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class FoodContentView extends StatelessWidget {
  FoodContentView({super.key, required this.foodModel});

  final navigation = NavigationService.shared;
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => context.read<FoodMenuBloc>()
            ..add(FoodMenuBlocEvent.getSideFromFirebase()),
        ),
        BlocProvider(
          create: (context) => context.read<FoodMenuBloc>()
            ..add(FoodMenuBlocEvent.getSauceFromFirebase()),
        ),
      ],
      child: Scaffold(
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
                    image: NetworkImage(foodModel.foodImage!),
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
                builder: (context, tablestate) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<FoodMenuBloc, FoodMenuBlocState>(
                        builder: (context, foodstate) {
                          return ElevatedButton(
                            onPressed: () async {
                              if (foodModel.sides == true) {
                                await CustomDialog.shared
                                    .showAlertDialog<SideModel?>(
                                  context: context,
                                  titleText: 'Choose Sides',
                                  onPressed: () {
                                    context.read<FoodBasketBloc>().add(
                                        FoodBasketEvent.addBasketFood(
                                            FoodModel(
                                                foodImage: foodModel.foodImage,
                                                choosenSide: CustomDialog
                                                    .shared.choosenValue,
                                                sides: foodModel.sides,
                                                foodName: foodModel.foodName,
                                                content: foodModel.content,
                                                price: foodModel.price,
                                                category: foodModel.category),
                                            tablestate.tableNumber));
                                  },
                                  items: foodstate.sideList,
                                  getName: (SideModel? sideModel) =>
                                      sideModel?.sideName ?? "",
                                );
                                await CustomDialog.shared
                                    .showAlertDialog<SauceModel?>(
                                  context: context,
                                  titleText: 'Choose Sauce',
                                  onPressed: () {
                                    context.read<FoodBasketBloc>().add(
                                        FoodBasketEvent.addBasketFood(
                                            FoodModel(
                                                foodImage: foodModel.foodImage,
                                                choosenSide: CustomDialog
                                                    .shared.choosenValue,
                                                sides: foodModel.sides,
                                                foodName: foodModel.foodName,
                                                content: foodModel.content,
                                                price: foodModel.price,
                                                category: foodModel.category),
                                            tablestate.tableNumber));
                                  },
                                  items: foodstate.sauceList,
                                  getName: (SauceModel? sauceModel) =>
                                      sauceModel?.sauceName ?? "",
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(16.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 15.0,
                            ),
                          );
                        },
                      ),
                      BlocBuilder<FoodBasketBloc, FoodBasketState>(
                        builder: (context, basketstate) {
                          return Text(
                            basketstate.itemCountMap?[foodModel.foodName]
                                    .toString() ??
                                "0",
                            style: TextStyle(fontSize: 23),
                          );
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<FoodBasketBloc>().add(
                              FoodBasketEvent.removeBasketFood(
                                  foodModel, tablestate.tableNumber));
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
                        foodModel.category!,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(foodModel.foodName!, style: TextStyle(fontSize: 25)),
                      SizedBox(height: 10),
                      Text("//${foodModel.price} €",
                          style: TextStyle(fontSize: 25)),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      Text(foodModel.content!, style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
