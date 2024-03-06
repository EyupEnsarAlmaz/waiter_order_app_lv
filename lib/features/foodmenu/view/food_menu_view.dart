import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:waiter_order_app_lv/core/constants/assets_constants.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/custom_note_dialog.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/dialog_content.dart';
import 'package:waiter_order_app_lv/core/custom/groupedListview/grouped_listview.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/custom_Listtile.dart';
import 'package:waiter_order_app_lv/core/custom/tab/custom_tab.dart';
import 'package:waiter_order_app_lv/core/enum/category_name_enum.dart';
import 'package:waiter_order_app_lv/core/enum/collection_name_enum.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/search/bloc/search_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/tabbar/bloc/tabbar_bloc.dart';
import 'package:waiter_order_app_lv/features/onboard/view/onboard_view.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class FoodMenuView extends StatefulWidget {
  const FoodMenuView({super.key});

  @override
  State<FoodMenuView> createState() => _FoodMenuViewState();
}

class _FoodMenuViewState extends State<FoodMenuView> {
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      BlocProvider.of<FoodMenuBloc>(context).add(
          FoodMenuBlocEvent.getDataFromFirebase(CollectionNameEnum.food.value));
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      BlocProvider.of<FoodMenuBloc>(context)
          .add(const FoodMenuBlocEvent.getSideFromFirebase());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(context.height(0.045)),
            child: BlocBuilder<FoodBasketBloc, FoodBasketState>(
              builder: (context, state) {
                return _appBar(context, state);
              },
            ),
          ),
          body: GestureDetector(
            onTap: () => context.hideKeyboard(),
            child: SingleChildScrollView(
              child: Column(children: [
                context.sizedboxHeight(0.015),
                Row(
                  children: [
                    context.sizedboxWidth(0.05),
                    _searchTextField(context),
                  ],
                ),
                context.sizedboxHeight(0.010),
                _searchResult(),
                context.sizedboxHeight(0.02),
                _selectedCategoryText(context),
                context.sizedboxHeight(0.02),
                _tabbar(),
                context.sizedboxHeight(0.02),
                _listItem(),
                context.sizedboxHeight(0.02),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  _kitchenMessageButton(context),
                  context.sizedboxWidth(0.02),
                  _dashLineButton()
                ]),
              ]),
            ),
          ));
    });
  }

  AppBar _appBar(BuildContext context, FoodBasketState state) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: KThemeColor.white),
        onPressed: () {
          context.read<FoodBasketBloc>().add(FoodBasketEvent.removeAllItem(
              state.basketMap, state.tableNumber));
          context
              .read<SearchBloc>()
              .add(const SearchBlocStateEvent.searchFromFirestore("qwyzcwsz"));
          Navigator.of(context).pop();
        },
      ),
      title: Text(LocaleKeys.foodMenu.tr()),
      centerTitle: true,
      elevation: 0,
      actions: [
        _shoppingCartIcon(),
        _basketItemLength(),
      ],
    );
  }

  IconButton _shoppingCartIcon() {
    return IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        navigation.navigateTo(
          path: KRoute.DETAIL_PAGE,
        );
      },
    );
  }

  BlocBuilder<FoodBasketBloc, FoodBasketState> _basketItemLength() {
    return BlocBuilder<FoodBasketBloc, FoodBasketState>(
      builder: (context, state) {
        return Padding(
          padding: context.lowPadding,
          child: Center(
            child: Text(
                state.basketMap?[state.tableNumber]?.length.toString() ?? ""),
          ),
        );
      },
    );
  }

  Row _selectedCategoryText(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: context.only(left: 0.03),
          child: Text(
            LocaleKeys.selectedCategory.tr(),
            style: context.titleLarge,
          ),
        ),
      ],
    );
  }

  BlocBuilder<FoodBasketBloc, FoodBasketState> _dashLineButton() {
    return BlocBuilder<FoodBasketBloc, FoodBasketState>(
      builder: (context, state) {
        return ElevatedButton(
            onPressed: () {
              context.read<FoodBasketBloc>().add(FoodBasketEvent.addBasketItem(
                  FoodModel(
                    image: Kasset.dashLine,
                    name: 'dashline',
                  ),
                  context.read<TableBloc>().state.tableNumber));
            },
            child: Text("-----------------"));
      },
    );
  }

  ElevatedButton _kitchenMessageButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          CustomNoteDialog.shared.showAlertDialog(context, _notesController);
        },
        child: Text(LocaleKeys.kitchenMessage.tr()));
  }

  SizedBox _searchTextField(BuildContext context) {
    return SizedBox(
      height: context.height(0.059),
      width: context.width(0.90),
      child: BlocBuilder<SearchBloc, SearchBlocState>(
        builder: (context, state) {
          return TextField(
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: KThemeColor.white),
              hintText: LocaleKeys.searchFood.tr(),
            ),
            controller: _searchController,
            onChanged: (value) async {
              if (value.isEmpty) {
                context.read<SearchBloc>().add(
                    const SearchBlocStateEvent.searchFromFirestore("qwyzcwsz"));
              }
              if (value.isNotEmpty) {
                context
                    .read<SearchBloc>()
                    .add(SearchBlocStateEvent.searchFromFirestore(value));
              }
            },
          );
        },
      ),
    );
  }

  BlocBuilder<SearchBloc, SearchBlocState> _searchResult() {
    return BlocBuilder<SearchBloc, SearchBlocState>(
      builder: (context, searchstate) {
        if (searchstate.status.isSuccess) {
          return BlocBuilder<FoodBasketBloc, FoodBasketState>(
            builder: (context, basketstate) {
              return SizedBox(
                width: context.width(0.88),
                height: context.height(0.13),
                child: ListView.builder(
                  itemCount: searchstate.queryList?.length,
                  itemBuilder: (context, index) {
                    final food = searchstate.queryList?[index];
                    return BlocBuilder<TableBloc, TableState>(
                      builder: (context, tablestate) {
                        return BlocBuilder<FoodMenuBloc, FoodMenuBlocState>(
                          builder: (context, foodstate) {
                            return CustomListTile(
                              onTapAdd: () async {
                                await DialogContet().showDialogs(
                                    context: context,
                                    foodModel: food,
                                    foodstate: foodstate,
                                    tableState: tablestate);
                              },
                              image: Image.network(
                                food!.image!,
                                fit: BoxFit.fill,
                              ),
                              foodName: food.name!,
                              price: "${food.price} €",
                              onTapRemove: () {
                                context.read<FoodBasketBloc>().add(
                                    FoodBasketEvent.removeItemFromBasket(
                                        food, tablestate.tableNumber));
                              },
                              piece: basketstate.itemCountMap?[food.name] ?? 0,
                              foodContent: () {},
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
        }

        return Visibility(
          visible: false,
          child: Container(),
        );
      },
    );
  }

  DefaultTabController _tabbar() {
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: BlocBuilder<TabBarBloc, TabBarState>(
          builder: (context, state) {
            return TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: KThemeColor.blackLight),
                isScrollable: true,
                onTap: (tabIndex) async {
                  switch (tabIndex) {
                    case 0:
                      context.read<FoodMenuBloc>().add(
                          FoodMenuBlocEvent.getDataFromFirebase(
                              CollectionNameEnum.food.value));
                      break;
                    case 1:
                      context.read<FoodMenuBloc>().add(
                          FoodMenuBlocEvent.getDataByCategory(
                              CategoryNameEnum.starter.value,
                              CollectionNameEnum.food.value));
                      break;
                    case 2:
                      context.read<FoodMenuBloc>().add(
                          const FoodMenuBlocEvent.getDrinksFromFirestore());
                      break;
                    case 3:
                      context.read<FoodMenuBloc>().add(
                          FoodMenuBlocEvent.getDataByCategory(
                              CategoryNameEnum.main.value,
                              CollectionNameEnum.food.value));
                      break;
                    case 4:
                      context.read<FoodMenuBloc>().add(
                          FoodMenuBlocEvent.getDataByCategory(
                              CategoryNameEnum.dessert.value,
                              CollectionNameEnum.food.value));
                      break;
                  }

                  context
                      .read<TabBarBloc>()
                      .add(TabBarEvent.tabChangedEvent(tabIndex));
                },
                tabs: [
                  CustomTab(
                      icon: Kasset.allFoodIcon, iconText: LocaleKeys.all.tr()),
                  CustomTab(
                      icon: Kasset.starterFoodIcon,
                      iconText: LocaleKeys.starter.tr()),
                  CustomTab(
                      icon: Kasset.drinksFoodIcon,
                      iconText: LocaleKeys.drinks.tr()),
                  CustomTab(
                      icon: Kasset.mainFoodIcon,
                      iconText: LocaleKeys.main.tr()),
                  CustomTab(
                      icon: Kasset.dessertFoodIcon,
                      iconText: LocaleKeys.dessert.tr()),
                ]);
          },
        ));
  }

  BlocBuilder<FoodMenuBloc, FoodMenuBlocState> _listItem() {
    return BlocBuilder<FoodMenuBloc, FoodMenuBlocState>(
      builder: (context, foodmenu) {
        if (foodmenu.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (foodmenu.status.isDrinkStatus) {
          return GroupedListviewItem(elements: foodmenu.drinksList!);
        } else if (foodmenu.status.isSuccess) {
          if (foodmenu.foodList != null) {
            return SizedBox(
              width: context.width(0.97),
              height: context.height(0.50),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: foodmenu.foodList!.length,
                  itemBuilder: (context, index) {
                    final food = foodmenu.foodList?[index];
                    return BlocBuilder<FoodBasketBloc, FoodBasketState>(
                      builder: (context, basketstate) {
                        return BlocBuilder<TableBloc, TableState>(
                          builder: (context, tablestate) {
                            return CustomListTile(
                              onTapAdd: () async {
                                DialogContet().showDialogs(
                                    context: context,
                                    foodModel: food,
                                    foodstate: foodmenu,
                                    tableState: tablestate);
                              },
                              image:
                                  Image.network(food!.image!, fit: BoxFit.fill),
                              foodName: food.name!,
                              price: "${food.price} €",
                              onTapRemove: () {
                                context.read<FoodBasketBloc>().add(
                                    FoodBasketEvent.removeItemFromBasket(
                                        food, tablestate.tableNumber));
                              },
                              piece: basketstate.itemCountMap?[food.name] ?? 0,
                              foodContent: () {
                                navigation.navigateTo(
                                  path: KRoute.FOOD_CONTENT,
                                  data: food,
                                );
                              },
                            );
                          },
                        );
                      },
                    );
                  }),
            );
          }
        }
        return const Text("");
      },
    );
  }
}
