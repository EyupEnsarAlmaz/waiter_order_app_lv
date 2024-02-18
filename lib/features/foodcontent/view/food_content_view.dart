import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_dialog.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/howcook_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';
import 'package:waiter_order_app_lv/features/onboard/view/onboard_view.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class FoodContentView extends StatefulWidget {
  FoodContentView({super.key, required this.foodModel});

  FoodModel foodModel;

  @override
  State<FoodContentView> createState() => _FoodContentViewState();
}

class _FoodContentViewState extends State<FoodContentView> {
  final navigation = NavigationService.shared;
  String? choosenSide;
  String? choosenSauce;
  String? choosenHowCook;

  @override
  void initState() {
    context
        .read<FoodMenuBloc>()
        .add(const FoodMenuBlocEvent.getSideFromFirebase());
    super.initState();
  }

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
                  image: NetworkImage(widget.foodModel.foodImage!),
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
                            showDialogs(
                                context: context,
                                foodModel: widget.foodModel,
                                foodstate: foodstate,
                                tableState: tablestate);
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
                          basketstate.itemCountMap?[widget.foodModel.foodName]
                                  .toString() ??
                              "0",
                          style: TextStyle(fontSize: 23),
                        );
                      },
                    ),
                    BlocBuilder<FoodBasketBloc, FoodBasketState>(
                      builder: (context, foodbasket) {
                        return ElevatedButton(
                          onPressed: () {
                            context.read<FoodBasketBloc>().add(
                                FoodBasketEvent.removeBasketFood(
                                    widget.foodModel, tablestate.tableNumber));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16.0),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 15.0,
                          ),
                        );
                      },
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
                      widget.foodModel.category!,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(widget.foodModel.foodName!,
                        style: TextStyle(fontSize: 25)),
                    SizedBox(height: 10),
                    Text("${widget.foodModel.price} €",
                        style: TextStyle(fontSize: 25)),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    Text(widget.foodModel.content!,
                        style: TextStyle(fontSize: 20)),
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

Future<void> showDialogs({
  required BuildContext context,
  required FoodModel foodModel,
  required FoodMenuBlocState foodstate,
  required TableState tableState,
}) async {
  String? choosenSauce;
  String? choosenSide;
  String? choosenHowCook;

  if (foodModel.sauce == true &&
      foodModel.side == true &&
      foodModel.howCook == true) {
    await CustomDialog.shared.showAlertDialog<SauceModel?>(
      context: context,
      titleText: 'Choose Sauce Please',
      items: foodstate.sauceList,
      getName: (SauceModel? sauceModel) => sauceModel?.sauceName ?? "",
      onPressed: () {
        choosenSauce = CustomDialog.shared.choosenValue;
      },
    );
    await CustomDialog.shared.showAlertDialog<SideModel?>(
      context: context,
      titleText: 'Choose Side Please',
      items: foodstate.sideList,
      getName: (SideModel? sideModel) => sideModel?.sideName ?? "",
      onPressed: () {
        choosenSide = CustomDialog.shared.choosenValue;
      },
    );
    await CustomDialog.shared.showAlertDialog<HowCookModel?>(
      context: context,
      titleText: 'Choose HowCook Please',
      items: foodstate.howcookList,
      getName: (HowCookModel? howCookModel) => howCookModel?.cookStyle ?? "",
      onPressed: () {
        choosenHowCook = CustomDialog.shared.choosenValue;
        context.read<FoodBasketBloc>().add(FoodBasketEvent.addBasketFood(
            FoodModel(
                choosenCookStyle: choosenHowCook,
                choosenSauce: choosenSauce,
                choosenSide: choosenSide,
                foodImage: foodModel.foodImage,
                side: foodModel.side,
                foodName: foodModel.foodName,
                content: foodModel.content,
                price: foodModel.price,
                category: foodModel.category),
            tableState.tableNumber));
      },
    );
  } else if (foodModel.side == true) {
    await CustomDialog.shared.showAlertDialog<SideModel?>(
      context: context,
      titleText: 'Choose Side Pleases',
      items: foodstate.sideList,
      getName: (SideModel? sideModel) => sideModel?.sideName ?? "",
      onPressed: () {
        choosenSide = CustomDialog.shared.choosenValue;
        print(choosenSide);
        print(choosenHowCook);
        print(choosenSauce);
        context.read<FoodBasketBloc>().add(FoodBasketEvent.addBasketFood(
            FoodModel(
                choosenSide: choosenSide,
                foodImage: foodModel.foodImage,
                side: foodModel.side,
                foodName: foodModel.foodName,
                content: foodModel.content,
                price: foodModel.price,
                category: foodModel.category),
            tableState.tableNumber));
      },
    );
  } else {
    context.read<FoodBasketBloc>().add(FoodBasketEvent.addBasketFood(
        FoodModel(
            foodImage: foodModel.foodImage,
            side: foodModel.side,
            foodName: foodModel.foodName,
            content: foodModel.content,
            price: foodModel.price,
            category: foodModel.category),
        tableState.tableNumber));
  }
}
