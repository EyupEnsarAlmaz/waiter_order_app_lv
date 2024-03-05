import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_dialog.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/howcook_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

import '../../../features/foodmenu/bloc/food_menu_bloc.dart';

class DialogContet {
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
        getName: (SauceModel? sauceModel) => sauceModel?.name ?? "",
        onPressed: () {
          choosenSauce = CustomDialog.shared.choosenValue;
        },
      );
      await CustomDialog.shared.showAlertDialog<SideModel?>(
        context: context,
        titleText: 'Choose Side Please',
        items: foodstate.sideList,
        getName: (SideModel? sideModel) => sideModel?.name ?? "",
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
          context.read<FoodBasketBloc>().add(FoodBasketEvent.addBasketItem(
              FoodModel(
                  choosenCookStyle: choosenHowCook,
                  choosenSauce: choosenSauce,
                  choosenSide: choosenSide,
                  image: foodModel.image,
                  side: foodModel.side,
                  name: foodModel.name,
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
        getName: (SideModel? sideModel) => sideModel?.name ?? "",
        onPressed: () {
          choosenSide = CustomDialog.shared.choosenValue;
          context.read<FoodBasketBloc>().add(FoodBasketEvent.addBasketItem(
              FoodModel(
                  choosenSide: choosenSide,
                  image: foodModel.image,
                  side: foodModel.side,
                  name: foodModel.name,
                  content: foodModel.content,
                  price: foodModel.price,
                  category: foodModel.category),
              tableState.tableNumber));
        },
      );
    } else {
      context.read<FoodBasketBloc>().add(FoodBasketEvent.addBasketItem(
          FoodModel(
              image: foodModel.image,
              side: foodModel.side,
              name: foodModel.name,
              content: foodModel.content,
              price: foodModel.price,
              category: foodModel.category),
          tableState.tableNumber));
    }
  }
}
