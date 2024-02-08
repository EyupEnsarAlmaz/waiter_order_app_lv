import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_dialog.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';
import 'package:waiter_order_app_lv/features/onboard/view/onboard_view.dart';
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
                              context.read<FoodMenuBloc>().add(
                                  const FoodMenuBlocEvent.getDataFromFirebase(
                                      "Side"));
                              await CustomDialog.shared
                                  .showAlertDialog<FoodModel?>(
                                context: context,
                                titleText: 'Choose Sides',
                                onPressed: () {
                                  print(CustomDialog.shared.choosenValue);
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
                                items: foodstate.foodList,
                                getName: (FoodModel? foodModel) =>
                                    foodModel?.sideModel?.sideName ?? "",
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
                    Text("${foodModel.price} €",
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
    );
  }

  Future<void> _showAlertDialog(
      BuildContext context, FoodModel foodModel) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return BlocBuilder<FoodMenuBloc, FoodMenuBlocState>(
          builder: (context, state) {
            return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                title: Text('Choose Side Order'),
                content: Container(
                  height: 300,
                  width: 300,
                  child: ListView.builder(
                      itemCount: state.foodList?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Container(
                          height: context.height(0.1),
                          width: context.width(0.15),
                          child: TextButton(
                            child: Text(
                              state.foodList?[index].sideModel?.sideName ?? "",
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () {
                              /*  choosenside =
                                  state.foodList?[index].sideModel?.sideName;
                              context.read<FoodBasketBloc>().add(
                                  FoodBasketEvent.addBasketFood(
                                      FoodModel(
                                          foodImage: foodModel.foodImage,
                                          choosenSide: choosenside,
                                          sides: foodModel.sides,
                                          foodName: foodModel.foodName,
                                          content: foodModel.content,
                                          price: foodModel.price,
                                          category: foodModel.category),
                                      1)); */
                              navigation.pop();
                            },
                          ),
                        );
                      }),
                ));
          },
        );
      },
    );
  }
}
