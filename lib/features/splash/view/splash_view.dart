import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:waiter_order_app_lv/core/constants/assets_constants.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/splash/controller/splash_controller.dart';
import '../../../core/extension/context_extension.dart';
import '../../../core/translations/locale_keys.g.dart';

class SplasView extends StatefulWidget {
  const SplasView({super.key});

  @override
  State<SplasView> createState() => _SplasViewState();
}

final navigation = NavigationService.shared;

class _SplasViewState extends SplashController {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              _animationImage(context),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _animationImage(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth * 0.3,
      height: context.dynamicHeight * 0.3,
      child: Center(
          child: LottieBuilder.asset(
        Kasset.splashLottieImage,
        width: context.dynamicWidth * 0.6,
        height: context.dynamicHeight * 0.6,
      )),
    );
  }
}
