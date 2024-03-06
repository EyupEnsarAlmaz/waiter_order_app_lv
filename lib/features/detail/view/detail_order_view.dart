import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_dialog.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/custom_drink_Listtile.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/detail_custom_listtile.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/bloc/login_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/howcook_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/product_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class DetailOrderView extends StatelessWidget {
  const DetailOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(LocaleKeys.detailOrder.tr()),
      ),
      body: SizedBox(
          child: Column(
        children: [
          context.sizedboxHeight(0.01),
          _tableNumberText(),
          _listBasketItem(),
          context.sizedboxHeight(0.03),
          _sendOrderButton(),
        ],
      )),
    );
  }

  Center _tableNumberText() {
    return Center(child: BlocBuilder<TableBloc, TableState>(
      builder: (context, state) {
        return Text(
          "${LocaleKeys.tableNumber.tr()} => ${state.tableNumber}",
          style: context.titleLarge,
        );
      },
    ));
  }

  BlocBuilder<TableBloc, TableState> _sendOrderButton() {
    return BlocBuilder<TableBloc, TableState>(
      builder: (context, state) {
        return BlocBuilder<FoodBasketBloc, FoodBasketState>(
          builder: (context, basketbloc) {
            return SizedBox(
              height: context.height(0.06),
              width: context.width(0.6),
              child: ElevatedButton(
                onPressed: () async {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    20,
                  )),
                  padding: context.mediumPadding,
                ),
                child: Text(LocaleKeys.sendOrder.tr()),
              ),
            );
          },
        );
      },
    );
  }
}

BlocBuilder<FoodBasketBloc, FoodBasketState> _listBasketItem() {
  String? choosenSide;
  String? choosenCookStyle;
  String? choosenSauce;
  return BlocBuilder<FoodBasketBloc, FoodBasketState>(
      builder: (context, state) {
    if (state.status.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state.status.isSuccess) {
      Map<String, List<ProductModel>> groupedItems = {};
      Map<String, int> itemCounts = {};
      int dashlineIndex = -1;
      List<ProductModel> allItems = [];

      for (var entry in state.basketMap!.entries) {
        List<ProductModel>? foodList = entry.value;
        if (foodList != null) {
          for (var item in foodList) {
            if (item.name == "dashline") {
              dashlineIndex = allItems.length;
            }
            allItems.add(item);
          }
        }
      }

      for (int i = 0; i < allItems.length; i++) {
        var item = allItems[i];

        String foodHash = (item is FoodModel)
            ? '${item.name}-${item.choosenCookStyle}-${item.choosenSauce}-${item.choosenSide}'
            : '${item.name}-${item.price}-${item.price}';

        if (i > dashlineIndex && dashlineIndex != -1) {
          foodHash = '${item.name}-afterdashline-${item.id}-${item.price}';
        }

        if (!groupedItems.containsKey(foodHash)) {
          groupedItems[foodHash] = [item];
          itemCounts[foodHash] = 1;
        } else {
          groupedItems[foodHash]!.add(item);
          itemCounts[foodHash] = (itemCounts[foodHash] ?? 0) + 1;
        }
      }

      return SizedBox(
          width: context.width(0.99),
          height: context.height(0.60),
          child: Column(children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: groupedItems.length,
                itemBuilder: (context, index) {
                  String foodHash = groupedItems.keys.toList()[index];
                  List<ProductModel> items = groupedItems[foodHash]!;
                  int itemCount = itemCounts[foodHash] ?? 0;

                  return Column(
                    children: <Widget>[
                      BlocBuilder<FoodBasketBloc, FoodBasketState>(
                          builder: (context, tablestate) {
                        for (var itemDetails in items) {
                          if (itemDetails.name == "dashline") {
                            return Text(
                              "-----------------------",
                              style: context.titleLarge,
                            );
                          }
                        }
                        for (var item in items) {
                          if (item is FoodModel) {
                            return CustomDetailListtile(
                              onTapAdd: () {
                                context.read<FoodBasketBloc>().add(
                                    FoodBasketEvent.addBasketItem(
                                        item, tablestate.tableNumber));
                              },
                              image: Image.network(
                                item.image ?? "",
                                fit: BoxFit.fill,
                              ),
                              foodName: item.name!,
                              price: "${item.price} €",
                              onTapRemove: () {
                                context.read<FoodBasketBloc>().add(
                                    FoodBasketEvent.removeItemFromBasket(
                                        item, tablestate.tableNumber));
                              },
                              piece: itemCount,
                              foodContent: () {},
                              choosenSide: item.choosenSide,
                              choosenSauce: item.choosenSauce,
                              choosenHowCook: item.choosenCookStyle,
                              onChangeSide: () async {
                                await CustomDialog.shared
                                    .showAlertDialog<SideModel?>(
                                  context: context,
                                  titleText: LocaleKeys.chooseSide.tr(),
                                  items: context
                                      .read<FoodMenuBloc>()
                                      .state
                                      .sideList,
                                  getName: (SideModel? sideModel) =>
                                      sideModel?.name ?? "",
                                  onPressed: () {
                                    choosenSide =
                                        CustomDialog.shared.choosenValue;
                                    context
                                        .read<FoodBasketBloc>()
                                        .add(FoodBasketEvent.updateBasketItem(
                                          FoodModel(
                                              id: item.id,
                                              choosenCookStyle:
                                                  item.choosenCookStyle,
                                              choosenSauce: item.choosenSauce,
                                              choosenSide: choosenSide,
                                              image: item.image,
                                              side: item.side,
                                              name: item.name,
                                              content: item.content,
                                              price: item.price,
                                              category: item.category),
                                          state.tableNumber,
                                        ));
                                  },
                                );
                              },
                              onchangeSauce: () async {
                                await CustomDialog.shared.showAlertDialog<
                                        SauceModel?>(
                                    context: context,
                                    titleText: LocaleKeys.chooseSauce.tr(),
                                    items: context
                                        .read<FoodMenuBloc>()
                                        .state
                                        .sauceList,
                                    getName: (SauceModel? sauceModel) =>
                                        sauceModel?.name ?? "",
                                    onPressed: () {
                                      choosenSauce =
                                          CustomDialog.shared.choosenValue;
                                      context
                                          .read<FoodBasketBloc>()
                                          .add(FoodBasketEvent.updateBasketItem(
                                            FoodModel(
                                                id: item.id,
                                                choosenCookStyle:
                                                    item.choosenCookStyle,
                                                choosenSauce: choosenSauce,
                                                choosenSide: item.choosenSide,
                                                image: item.image,
                                                side: item.side,
                                                name: item.name,
                                                content: item.content,
                                                price: item.price,
                                                category: item.category),
                                            state.tableNumber,
                                          ));
                                    });
                              },
                              onChangeCookStyle: () async {
                                await CustomDialog.shared.showAlertDialog<
                                        HowCookModel?>(
                                    context: context,
                                    titleText: LocaleKeys.chooseHowCook.tr(),
                                    items: context
                                        .read<FoodMenuBloc>()
                                        .state
                                        .sauceList,
                                    getName: (HowCookModel? howCookModel) =>
                                        howCookModel?.name ?? "",
                                    onPressed: () {
                                      choosenCookStyle =
                                          CustomDialog.shared.choosenValue;
                                      context
                                          .read<FoodBasketBloc>()
                                          .add(FoodBasketEvent.updateBasketItem(
                                            FoodModel(
                                                id: item.id,
                                                choosenCookStyle:
                                                    choosenCookStyle,
                                                choosenSauce: item.choosenSauce,
                                                choosenSide: item.choosenSide,
                                                image: item.image,
                                                side: item.side,
                                                name: item.name,
                                                content: item.content,
                                                price: item.price,
                                                category: item.category),
                                            state.tableNumber,
                                          ));
                                    });
                              },
                            );
                          } else if (item is DrinksModel) {
                            return CustomDrinkListTile(
                                drinkName: item.name!,
                                piece: itemCount,
                                onTapAdd: () {
                                  context.read<FoodBasketBloc>().add(
                                      FoodBasketEvent.addBasketItem(
                                          item, state.tableNumber));
                                },
                                onTapRemove: () {
                                  context.read<FoodBasketBloc>().add(
                                      FoodBasketEvent.removeItemFromBasket(
                                          item, state.tableNumber));
                                },
                                price: item.price.toString());
                          }
                        }
                        return const Text("Basket is Empty");
                      }),
                    ],
                  );
                },
              ),
            )
          ]));
    }
    return const Text("");
  });
}
