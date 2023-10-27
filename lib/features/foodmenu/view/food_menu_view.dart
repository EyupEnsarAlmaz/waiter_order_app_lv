import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/constants/assets_constants.dart';
import 'package:waiter_order_app_lv/core/custom/listtile/custom_Listtile.dart';
import 'package:waiter_order_app_lv/core/custom/textfield/custom_textfield.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/network/firestore/food_service/food_service.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/tabbar/bloc/tabbar_bloc.dart';

class FoodMenuView extends StatefulWidget {
  const FoodMenuView({super.key});

  @override
  State<FoodMenuView> createState() => _FoodMenuViewState();
}

class _FoodMenuViewState extends State<FoodMenuView> {
  final _foodSearchcontroller = TextEditingController();

  late PageController _pageController;

  List<String> images = [
    Kasset.adver1,
    Kasset.adver2,
    Kasset.adver3,
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  int activePage = 1;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FoodMenuBloc()..add(FoodMenuBlocEvent.getDataFromFirebase()),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart))
            ],
          ),
          body: GestureDetector(
            onTap: () => context.hideKeyboard(),
            child: SingleChildScrollView(
              child: Column(children: [
                context.sizedboxHeight(0.07),
                Row(
                  children: [
                    context.sizedboxWidth(0.05),
                    _searchTextField(),
                  ],
                ),
                context.sizedboxHeight(0.02),
                _pageBuilder(context),
                context.sizedboxHeight(0.02),
                _tabbar(),
                context.sizedboxHeight(0.02),
                _listItem()
              ]),
            ),
          )),
    );
  }

  CustomTextfield _searchTextField() {
    return CustomTextfield(
        textEditingController: _foodSearchcontroller,
        hintText: "Search",
        isObsecure: false);
  }

  SizedBox _pageBuilder(BuildContext context) {
    return SizedBox(
      width: context.width(0.88),
      height: context.height(0.25),
      child: PageView.builder(
          itemCount: images.length,
          pageSnapping: true,
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              activePage = page;
            });
          },
          itemBuilder: (context, pagePosition) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                images[pagePosition],
                fit: BoxFit.fill,
              ),
            );
          }),
    );
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
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isSuccess) {
          return Container(
            width: context.width(0.88),
            height: context.height(0.45),
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
                          CustomListTile(
                            image: Image.network(
                              food!.foodImage,
                              fit: BoxFit.fill,
                            ),
                            foodName: food.foodName,
                            price: "${food.price} €",
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
