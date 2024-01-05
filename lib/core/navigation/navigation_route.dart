import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/view/login_view.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/view/register_veiw.dart';
import 'package:waiter_order_app_lv/features/detail/view/detail_order_view.dart';
import 'package:waiter_order_app_lv/features/foodmenu/view/food_menu_view.dart';
import 'package:waiter_order_app_lv/features/onboard/view/onboard_view.dart';
import 'package:waiter_order_app_lv/features/splash/view/splash_view.dart';
import 'package:waiter_order_app_lv/features/table/view/table_view.dart';

class NavigationRoute {
  static final NavigationRoute _shared = NavigationRoute._init();
  static NavigationRoute get shared => _shared;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case KRoute.SPLASH_PAGE:
        return _getRoute(const SplasView());
      case KRoute.ONBOARD_PAGE:
        return _getRoute(const OnboardView());
      case KRoute.REGISTER:
        return _getRoute(const RegisterView());
      case KRoute.LOGIN_PAGE:
        return _getRoute(LoginView());
      case KRoute.TABLE_PAGE:
        return _getRoute(TableView());
      case KRoute.FOOD_MENU:
        return _getRoute(FoodMenuView());
      case KRoute.DETAIL_PAGE:
        return _getRoute(DetailOrderView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("${args.name}"),
            ),
          ),
        );
    }
  }

  PageRoute _getRoute(Widget page) => MaterialPageRoute(
        builder: (context) => page,
      );
}
