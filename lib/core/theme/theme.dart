import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';

class CustomTheme {
  const CustomTheme._();
  static const shared = CustomTheme._();

  ThemeData lightThemeData() {
    return ThemeData.light().copyWith(
      primaryColor: KThemeColor.white,
      scaffoldBackgroundColor: KThemeColor.white,
      hintColor: KThemeColor.black,
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: KThemeColor.white),
      colorScheme: const ColorScheme.light(
        primary: KThemeColor.primaryColor,
        secondary: KThemeColor.primaryColor,
        error: KThemeColor.deleteRedColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: KThemeColor.black),
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: KThemeColor.blackDark),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: KThemeColor.black,
        selectedItemColor: KThemeColor.primaryColor,
        unselectedItemColor: KThemeColor.primaryColor.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: KThemeColor.primaryColor),
        showUnselectedLabels: true,
      ),
    );
  }

  ThemeData darkThemeData() {
    return ThemeData.dark().copyWith(
      primaryColor: KThemeColor.black,
      scaffoldBackgroundColor: KThemeColor.black,
      hintColor: KThemeColor.white,
      appBarTheme: appBarTheme.copyWith(
          backgroundColor: KThemeColor.black,
          titleTextStyle: TextStyle(color: KThemeColor.white)),
      iconTheme: const IconThemeData(color: KThemeColor.white),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: KThemeColor.white,
        secondary: KThemeColor.white,
        error: KThemeColor.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: KThemeColor.white),
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: KThemeColor.blackDark),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: KThemeColor.white,
        selectedItemColor: KThemeColor.white,
        unselectedItemColor: KThemeColor.white.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: KThemeColor.white),
        showUnselectedLabels: true,
      ),
    );
  }
}

const appBarTheme = AppBarTheme(
    centerTitle: false,
    elevation: 0,
    titleTextStyle: TextStyle(color: KThemeColor.black));
