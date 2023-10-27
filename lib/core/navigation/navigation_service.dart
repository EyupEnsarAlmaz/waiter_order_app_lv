import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/navigation/contract/base_navigation_service.dart';

class NavigationService extends NavigationServiceContract {
  static final NavigationService _shared = NavigationService._();
  static NavigationService get shared => _shared;
  NavigationService._();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  final removeAllOldRoutes = (Route<dynamic> route) => false;

  @override
  Future<void> navigateTo({required String path, Object? data}) async {
    try {
      await navigatorKey.currentState!.pushNamed(
        path,
        arguments: data,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> navigaToClear({required String path, Object? data}) async {
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(
      path,
      removeAllOldRoutes,
      arguments: data,
    );
  }

  @override
  void pop() => navigatorKey.currentState!.pop();
}
