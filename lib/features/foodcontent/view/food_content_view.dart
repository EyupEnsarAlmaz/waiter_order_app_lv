import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_dialog.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/dialog_content.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
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
        title: Text(LocaleKeys.detailText.tr(), style: context.titleSmall),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            _foodImage(context),
            BlocBuilder<TableBloc, TableState>(
              builder: (context, tablestate) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.sizedboxHeight(0.04),
                    _pieceText(),
                  ],
                );
              },
            ),
            Align(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.foodModel.category!, style: context.titleLarge),
                    context.sizedboxHeight(0.01),
                    Text(widget.foodModel.name!, style: context.titleLarge),
                    context.sizedboxHeight(0.01),
                    Text("${widget.foodModel.price} €",
                        style: context.titleLarge),
                    context.sizedboxHeight(0.01),
                    Text(widget.foodModel.content!, style: context.titleLarge),
                    context.sizedboxHeight(0.02),
                    _addToCartButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BlocBuilder<FoodMenuBloc, FoodMenuBlocState> _addToCartButton() {
    return BlocBuilder<FoodMenuBloc, FoodMenuBlocState>(
      builder: (context, foodstate) {
        return BlocBuilder<TableBloc, TableState>(
          builder: (context, tablestate) {
            return SizedBox(
              height: context.height(0.06),
              width: context.width(0.6),
              child: ElevatedButton(
                onPressed: () async {
                  await DialogContet().showDialogs(
                      context: context,
                      foodModel: widget.foodModel,
                      foodstate: foodstate,
                      tableState: tablestate);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      20,
                    )),
                    padding: context.mediumPadding),
                child: Text(LocaleKeys.addToCart.tr()),
              ),
            );
          },
        );
      },
    );
  }

  BlocBuilder<FoodBasketBloc, FoodBasketState> _pieceText() {
    return BlocBuilder<FoodBasketBloc, FoodBasketState>(
      builder: (context, basketstate) {
        return Text(
          " ${basketstate.itemCountMap![widget.foodModel.name]}" ?? "0",
          style: context.titleLarge,
        );
      },
    );
  }

  Container _foodImage(BuildContext context) {
    return Container(
      width: context.width(0.50),
      height: context.height(0.25),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.foodModel.image!),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        border: Border.all(
          color: Colors.red,
          width: context.width(0.015),
        ),
      ),
    );
  }
}
