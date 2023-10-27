import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/translations/codegen_loader.g.dart';

@immutable
class LanguageHelper {
  const LanguageHelper._();

  static Widget setupLocales(Widget widget) {
    return EasyLocalization(
      assetLoader: const CodegenLoader(),
      supportedLocales: const [
        Locale('tr'),
        Locale('en'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('tr'),
      child: widget,
    );
  }
}
