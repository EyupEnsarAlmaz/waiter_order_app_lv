import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/constants/assets_constants.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/custom_Listtile.dart';
import 'package:waiter_order_app_lv/core/custom/textfield/custom_textfield.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/network/firestore/food_service/food_service.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/features/detail/view/detail_order_view.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FoodMenuBloc()..add(FoodMenuBlocEvent.getDataFromFirebase()),
        ),
      ],
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: BlocBuilder<FoodBasketBloc, FoodBasketState>(
              builder: (context, state) {
                return AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      context.read<FoodBasketBloc>().add(
                          FoodBasketEvent.removeAllFood(
                              state.basketMap, state.tableNumber));
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
                context.sizedboxHeight(0.02),
                Row(
                  children: [
                    context.sizedboxWidth(0.05),
                    Container(
                      height: 100,
                      width: 100,
                      child: TextField(
                        controller: _searchController,
                        onChanged: (value) async {
                          context.read<SearchBloc>().add(
                              SearchBlocStateEvent.searchFromFirestore(value));
                        },
                        decoration: InputDecoration(
                          labelText: 'Search Food',
                        ),
                      ),
                    ),
                  ],
                ),
                BlocBuilder<SearchBloc, SearchBlocState>(
                  builder: (context, state) {
                    if (state.status.isSuccess) {
                      return Container(
                        height: 100,
                        width: 100,
                        child: ListView.builder(
                          itemCount: state.queryList?.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title:
                                  Text(state.queryList?[index].foodName ?? ""),
                              subtitle: Text(
                                  'Price: ${state.queryList?[index].price.toString()}, Content: ${state.queryList?[index].price}'),
                              onTap: () {
                                // Burada seçilen öneriye tıklandığında yapılacak işlemleri ekleyebilirsiniz.
                                // Örneğin, seçilen öğeyi Firestore'dan detayları alıp gösterebilirsiniz.
                                print(
                                    'Selected suggestion: ${state.queryList?[index].foodName}');
                              },
                            );
                          },
                        ),
                      );
                    }
                    return Text("nothing");
                  },
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
          )),
    );
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
                isScrollable: true,
                onTap: (tabIndex) async {
                  switch (tabIndex) {
                    case 0:
                      context
                          .read<FoodMenuBloc>()
                          .add(FoodMenuBlocEvent.getDataFromFirebase());
                      break;
                    case 1:
                      context
                          .read<FoodMenuBloc>()
                          .add(FoodMenuBlocEvent.getDataByCategory("Starter"));
                      break;
                    case 2:
                      context
                          .read<FoodMenuBloc>()
                          .add(FoodMenuBlocEvent.getDataByCategory("Drinks"));
                      break;
                    case 3:
                      context
                          .read<FoodMenuBloc>()
                          .add(FoodMenuBlocEvent.getDataByCategory("Main"));
                      break;
                    case 4:
                      context
                          .read<FoodMenuBloc>()
                          .add(FoodMenuBlocEvent.getDataByCategory("Dessert"));
                      break;
                  }

                  context
                      .read<TabBarBloc>()
                      .add(TabBarEvent.tabChangedEvent(tabIndex));
                },
                tabs: const [
                  Tab(text: "All"),
                  Tab(text: "Starter"),
                  Tab(text: "Drinks"),
                  Tab(text: "Main"),
                  Tab(text: "Dessert"),
                ]);
          },
        ));
  }

  BlocBuilder<FoodMenuBloc, FoodMenuBlocState> _listItem() {
    return BlocBuilder<FoodMenuBloc, FoodMenuBlocState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isSuccess) {
          return Container(
            width: context.width(0.88),
            height: context.height(0.50),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.foodList!.length,
                itemBuilder: (context, index) {
                  final food = state.foodList?[index];

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
                                    onTapAdd: () {
                                      context.read<FoodBasketBloc>().add(
                                          FoodBasketEvent.addBasketFood(
                                              food, tablestate.tableNumber));
                                    },
                                    image: Image.network(
                                      food!.foodImage,
                                      fit: BoxFit.fill,
                                    ),
                                    foodName: food.foodName,
                                    price: "${food.price} €",
                                    onTapRemove: () {
                                      context.read<FoodBasketBloc>().add(
                                          FoodBasketEvent.removeBasketFood(
                                              food, tablestate.tableNumber));
                                    },
                                    piece: itemCount ?? 0,
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