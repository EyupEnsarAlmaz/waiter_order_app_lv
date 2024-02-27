import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:waiter_order_app_lv/core/constants/assets_constants.dart';
import 'package:waiter_order_app_lv/core/custom/dialog/dialog_content.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/custom_Listtile.dart';
import 'package:waiter_order_app_lv/core/custom/textfield/custom_textfield.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/network/firestore/food_service/food_service.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/features/detail/view/detail_order_view.dart';
import 'package:waiter_order_app_lv/features/foodcontent/view/food_content_view.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/search/bloc/search_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/tabbar/bloc/tabbar_bloc.dart';
import 'package:waiter_order_app_lv/features/onboard/view/onboard_view.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';

class FoodMenuView extends StatefulWidget {
  FoodMenuView({super.key});

  @override
  State<FoodMenuView> createState() => _FoodMenuViewState();
}

class _FoodMenuViewState extends State<FoodMenuView> {
  final TextEditingController _foodSearchcontroller = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final String dashLine = "assets/dashline.png";
  final TextEditingController _searchController = TextEditingController();

  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 100), () {
      BlocProvider.of<FoodMenuBloc>(context)
          .add(FoodMenuBlocEvent.getDataFromFirebase("Food"));
    });

    Future.delayed(Duration(milliseconds: 200), () {
      BlocProvider.of<FoodMenuBloc>(context)
          .add(FoodMenuBlocEvent.getSideFromFirebase());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(32.0),
            child: BlocBuilder<FoodBasketBloc, FoodBasketState>(
              builder: (context, state) {
                return AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      context.read<FoodBasketBloc>().add(
                          FoodBasketEvent.removeAllFood(
                              state.basketMap, state.tableNumber));
                      context.read<SearchBloc>().add(
                          SearchBlocStateEvent.searchFromFirestore("qwyzcwsz"));
                      Navigator.of(context).pop();
                    },
                  ),
                  title: Text("Order Menu"),
                  centerTitle: true,
                  elevation: 0,
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      tooltip: 'Open shopping cart',
                      onPressed: () {
                        navigation.navigateTo(
                          path: KRoute.DETAIL_PAGE,
                        );
                      },
                    ),
                    BlocBuilder<FoodBasketBloc, FoodBasketState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(state
                                    .basketMap?[state.tableNumber]?.length
                                    .toString() ??
                                ""),
                          ),
                        );
                      },
                    ),
                  ],
                );
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
                    Container(
                      height: context.height(0.059),
                      width: context.width(0.90),
                      child: BlocBuilder<SearchBloc, SearchBlocState>(
                        builder: (context, state) {
                          return TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: "Search food",
                            ),
                            controller: _searchController,
                            onChanged: (value) async {
                              if (value.isEmpty) {
                                context.read<SearchBloc>().add(
                                    SearchBlocStateEvent.searchFromFirestore(
                                        "qwyzcwsz"));
                              }
                              if (value.isNotEmpty) {
                                context.read<SearchBloc>().add(
                                    SearchBlocStateEvent.searchFromFirestore(
                                        value));
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                BlocBuilder<SearchBloc, SearchBlocState>(
                  builder: (context, searchstate) {
                    if (searchstate.status.isSuccess) {
                      return BlocBuilder<FoodBasketBloc, FoodBasketState>(
                        builder: (context, basketstate) {
                          return Container(
                            width: context.width(0.88),
                            height: context.height(0.16),
                            child: ListView.builder(
                              itemCount: searchstate.queryList?.length,
                              itemBuilder: (context, index) {
                                final food = searchstate.queryList?[index];
                                return BlocBuilder<TableBloc, TableState>(
                                  builder: (context, tablestate) {
                                    return BlocBuilder<FoodMenuBloc,
                                        FoodMenuBlocState>(
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
                                            food!.foodImage!,
                                            fit: BoxFit.fill,
                                          ),
                                          foodName: food.foodName!,
                                          price: "${food.price} €",
                                          onTapRemove: () {
                                            context.read<FoodBasketBloc>().add(
                                                FoodBasketEvent
                                                    .removeBasketFood(
                                                        food,
                                                        tablestate
                                                            .tableNumber));
                                          },
                                          piece: basketstate.itemCountMap?[
                                                  food.foodName] ??
                                              0,
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
                ),
                context.sizedboxHeight(0.02),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Selected Category",
                        style: context.titleLarge,
                      ),
                    ),
                  ],
                ),
                context.sizedboxHeight(0.02),
                _tabbar(),
                context.sizedboxHeight(0.02),
                _listItem(),
                context.sizedboxHeight(0.02),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                      onPressed: () {
                        _showAlertDialog(context, _notesController);
                      },
                      child: Text("KITCHEN MESSAGE")),
                  context.sizedboxWidth(0.02),
                  BlocBuilder<FoodBasketBloc, FoodBasketState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            context.read<FoodBasketBloc>().add(
                                FoodBasketEvent.addBasketFood(
                                    FoodModel(
                                      category: "dashline",
                                      foodImage: dashLine,
                                      foodName: 'dashline',
                                      price: 0,
                                      content: '',
                                      side: false,
                                      choosenSide: '',
                                    ),
                                    context
                                        .read<TableBloc>()
                                        .state
                                        .tableNumber));
                          },
                          child: Text("-----------------"));
                    },
                  )
                ]),
              ]),
            ),
          ));
    });
  }

  CustomTextfield _searchTextField() {
    return CustomTextfield(
        onChanged: (value) {
          context
              .read<SearchBloc>()
              .add(SearchBlocStateEvent.searchFromFirestore(value));
        },
        textEditingController: _foodSearchcontroller,
        hintText: "Search",
        isObsecure: false);
  }

  DefaultTabController _tabbar() {
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: BlocBuilder<TabBarBloc, TabBarState>(
          builder: (context, state) {
            return TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: KThemeColor.greyDark),
                isScrollable: true,
                onTap: (tabIndex) async {
                  switch (tabIndex) {
                    case 0:
                      context
                          .read<FoodMenuBloc>()
                          .add(FoodMenuBlocEvent.getDataFromFirebase("Food"));
                      break;
                    case 1:
                      context.read<FoodMenuBloc>().add(
                          FoodMenuBlocEvent.getDataByCategory(
                              "Starter", "Food"));
                      break;
                    case 2:
                      context
                          .read<FoodMenuBloc>()
                          .add(FoodMenuBlocEvent.getDrinksFromFirestore());
                      break;
                    case 3:
                      context.read<FoodMenuBloc>().add(
                          FoodMenuBlocEvent.getDataByCategory("Main", "Food"));
                      break;
                    case 4:
                      context.read<FoodMenuBloc>().add(
                          FoodMenuBlocEvent.getDataByCategory(
                              "Dessert", "Food"));
                      break;
                  }

                  context
                      .read<TabBarBloc>()
                      .add(TabBarEvent.tabChangedEvent(tabIndex));
                },
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(Kasset.allFoodIcon, width: 28, height: 28),
                        const SizedBox(width: 8),
                        Text('All'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(Kasset.starterFoodIcon,
                            width: 28, height: 28),
                        const SizedBox(width: 8),
                        Text('Starter'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(Kasset.drinksFoodIcon,
                            width: 28, height: 28),
                        const SizedBox(width: 8),
                        Text('Drinks'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(Kasset.mainFoodIcon, width: 28, height: 28),
                        const SizedBox(width: 8),
                        Text('Main'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(Kasset.dessertFoodIcon,
                            width: 28, height: 28),
                        const SizedBox(width: 8),
                        Text('Dessert'),
                      ],
                    ),
                  ),
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
          return Container(
              height: 400,
              width: 350,
              child: GroupedListView<DrinksModel, String>(
                elements: foodmenu.drinksList!,
                groupBy: (DrinksModel drinksModel) => drinksModel.category!,
                groupComparator: (value1, value2) => value2.compareTo(value1),
                itemComparator: (DrinksModel element1, DrinksModel element2) =>
                    element1.drinkName!.compareTo(element2.drinkName!),
                order: GroupedListOrder.DESC,
                groupSeparatorBuilder: (String value) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(value.toUpperCase())),
                itemBuilder: (context, element) {
                  return Card(
                    child: SizedBox(
                      child: ListTile(
                        title: Text(
                          element.drinkName!,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                context.read<FoodBasketBloc>().add(
                                    FoodBasketEvent.addBasketDrinks(
                                        element, 1));
                              },
                            ),
                            Text("1"),
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ));
        } else if (foodmenu.status.isSuccess) {
          if (foodmenu.foodList != null) {
            return Container(
              width: context.width(0.97),
              height: context.height(0.50),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: foodmenu.foodList!.length,
                  itemBuilder: (context, index) {
                    final food = foodmenu.foodList?[index];
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
                                int? itemCount = basketstate
                                    .basketMap?[basketstate.tableNumber]
                                    ?.where((item) => item == food)
                                    .length;
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
                                      image: Image.network(
                                        food!.foodImage!,
                                        fit: BoxFit.fill,
                                      ),
                                      foodName: food.foodName!,
                                      price: "${food.price} €",
                                      onTapRemove: () {
                                        context.read<FoodBasketBloc>().add(
                                            FoodBasketEvent.removeBasketFood(
                                                food, tablestate.tableNumber));
                                      },
                                      piece: basketstate
                                              .itemCountMap?[food.foodName] ??
                                          0,
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
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            );
          }
        }
        return Text("");
      },
    );
  }
}

Future<void> _showAlertDialog(
    BuildContext context, TextEditingController controller) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        // <-- SEE HERE
        title: Text('Please enter a note'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                controller: controller,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          BlocBuilder<FoodBasketBloc, FoodBasketState>(
            builder: (context, state) {
              return TextButton(
                child: const Text('Send'),
                onPressed: () {
                  context.read<FoodBasketBloc>().add(FoodBasketEvent.addNotes(
                      controller.text,
                      context.read<TableBloc>().state.tableNumber));
                  navigation.pop();
                },
              );
            },
          ),
          TextButton(
            child: const Text('Exit'),
            onPressed: () {
              navigation.pop();
            },
          ),
        ],
      );
    },
  );
}



/*  for (int i = 0; i < 10; i++) {

  DropdownButton(
                            value: selectedItemValue[index],
                            items: _dropDownItem(),
                            onChanged: (value) {
                              setState(() {});
                            },
                            hint: Text('0'),
                          ),

                    selectedItemValue.add(1);
                  }
 DropdownButton(
                            value: selectedItemValue[index],
                            items: _dropDownItem(),
                            onChanged: (value) {
                              setState(() {});
                            },
                            hint: Text('0'),
                          ),

List<DropdownMenuItem<int>> _dropDownItem() {
  List<int> itemValue = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  return itemValue
      .map((value) => DropdownMenuItem(
            value: value,
            child: Text(value.toString()),
          ))
      .toList();
}
 */