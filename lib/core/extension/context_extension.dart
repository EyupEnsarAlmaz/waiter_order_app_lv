import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension EasyContext on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  void hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  void unfocus() => FocusScope.of(this).unfocus();

  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  Future<void> cupertinoDialog({
    required Widget widget,
    bool barrierDismissible = true,
  }) async {
    await showCupertinoDialog(
      barrierDismissible: barrierDismissible,
      context: this,
      builder: (_) => widget,
    );
  }

  Future<void> bottomSheet({
    Widget widget = const SizedBox(),
    bool isScrollControlled = false,
    borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
  }) async {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      isScrollControlled: isScrollControlled,
      context: this,
      builder: (_) => BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1,
          sigmaY: 1,
        ),
        child: widget,
      ),
    );
  }
}

extension EasySize on BuildContext {
  double get dynamicHeight => mediaQuery.size.height;
  double get dynamicWidth => mediaQuery.size.width;

  double height(double value) => dynamicHeight * value;
  double width(double value) => dynamicWidth * value;

  double get lowWidth => dynamicWidth * 0.015;
  double get normalWidth => dynamicWidth * 0.025;
  double get mediumWidth => dynamicWidth * 0.035;
  double get bigWidth => dynamicWidth * 0.05;

  double get lowHeight => dynamicWidth * 0.015;
  double get normalHeight => dynamicHeight * 0.025;
  double get mediumHeight => dynamicHeight * 0.035;
  double get bigHeight => dynamicWidth * 0.05;
}

extension CustomSizedBox on BuildContext {
  SizedBox sizedboxHeight(double value) =>
      SizedBox(height: dynamicHeight * value);
  SizedBox get smallSizedboxHeight => SizedBox(height: dynamicHeight * 0.1);
  SizedBox get mediumSizedboxHeight => SizedBox(height: dynamicHeight * 0.3);
  SizedBox get bigSizedboxHeight => SizedBox(height: dynamicHeight * 0.7);

  SizedBox sizedboxWidth(double value) => SizedBox(width: dynamicWidth * value);
  SizedBox get widthSizedboxHWidth => SizedBox(height: dynamicWidth * 0.1);
  SizedBox get mediumSizedboxWidth => SizedBox(height: dynamicWidth * 0.3);
  SizedBox get bigSizedboxWidth => SizedBox(height: dynamicWidth * 0.7);
}

extension EasyTheme on BuildContext {
  ThemeData get theme => Theme.of(this);
  Color get primary => colors.primary;
  Color get backgroundColor => theme.colorScheme.background;
  ColorScheme get colors => theme.colorScheme;
  IconThemeData get iconTheme => theme.iconTheme;
}

extension EasyPadding on BuildContext {
  EdgeInsets get lowPadding => EdgeInsets.all(lowWidth);
  EdgeInsets get normalPadding => EdgeInsets.all(normalWidth);
  EdgeInsets get mediumPadding => EdgeInsets.all(mediumWidth);
  EdgeInsets get bigPadding => EdgeInsets.all(bigWidth);
  EdgeInsets padding(double ratio) => EdgeInsets.all(ratio * dynamicWidth);

  EdgeInsets symmetricPadding({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) =>
      EdgeInsets.symmetric(
        horizontal: width(1.0) * horizontal,
        vertical: height(1.0) * vertical,
      );

  EdgeInsets only({
    double right = 0.0,
    double left = 0.0,
    double top = 0.0,
    double bottom = 0.0,
  }) =>
      EdgeInsets.only(
        left: left * dynamicWidth,
        right: right * dynamicWidth,
        bottom: bottom * dynamicHeight,
        top: top * dynamicHeight,
      );
}

extension PositionWidget on BuildContext {
  double get lowLes => dynamicWidth * 0.1;
  double left(double value) => dynamicHeight * value;
  double right(double value) => dynamicHeight * value;
  double top(double value) => dynamicHeight * value;
  double bottom(double value) => dynamicHeight * value;
}

extension EasyText on BuildContext {
  TextTheme get textTheme => theme.textTheme;
  TextStyle get titleSmall => theme.textTheme.titleSmall!;
  TextStyle get titleMedium => theme.textTheme.titleMedium!;
  TextStyle get titleLarge => theme.textTheme.titleLarge!;
  TextStyle get bodyLarge => theme.textTheme.bodyLarge!;
  TextStyle get bodyMedium => theme.textTheme.bodyMedium!;
  TextStyle get bodySmall => theme.textTheme.bodySmall!;
  TextStyle get headlineMedium => theme.textTheme.headlineMedium!;
  TextStyle get headlineSmall => theme.textTheme.headlineSmall!;
  TextStyle get displayLarge => theme.textTheme.displayLarge!;
  TextStyle get displayMedium => theme.textTheme.displayMedium!;
  TextStyle get displaySmall => theme.textTheme.displaySmall!;
}
