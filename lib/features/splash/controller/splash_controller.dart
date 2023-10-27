import 'dart:async';
import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/splash/view/splash_view.dart';

abstract class SplashController extends State<SplasView> {
  final navigation = NavigationService.shared;
  @override
  void initState() {
    super.initState();
    Future(
      () async {
        Timer(
          const Duration(seconds: 3),
          () async {
            navigation.navigaToClear(path: KRoute.ONBOARD_PAGE);
          },
        );
      },
    );
  }
}
