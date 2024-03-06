import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/constants/assets_constants.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/bloc/login_bloc.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

final navigation = NavigationService.shared;

class _OnboardViewState extends State<OnboardView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginBlocState>(
      listener: (context, state) {
        if (state.status.isUser) {
          navigation.navigateTo(path: KRoute.LOGIN_PAGE);
        } else if (state.status.isSuccess) {
          navigation.navigateTo(path: KRoute.TABLE_PAGE);
        }
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              context
                  .read<LoginBloc>()
                  .add(const LoginBlocEvent.autenticationLoggedIn());
            },
            label: const Icon(Icons.arrow_right, color: KThemeColor.white),
          ),
          body: Column(
            children: [
              SizedBox(height: context.height(0.10)),
              _onBoardTitle1(context),
              _onboardTitle2(context),
              SizedBox(
                height: context.height(0.47),
                width: context.width(1),
                child: Stack(children: [
                  _terraceImage(context),
                  _pastaImage(context),
                ]),
              ),
              SizedBox(height: context.height(0.05)),
              _soupOfDay(context),
              SizedBox(height: context.height(0.01)),
              _soupOfDayDescribe(context),
              SizedBox(height: context.height(0.01)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _brocoliIconImage(context),
                  Text("+", style: TextStyle(fontSize: context.height(0.04))),
                  _cheeseIconImage(context),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Text _onboardTitle2(BuildContext context) {
    return Text(LocaleKeys.onboardTitle2.tr(),
        style: TextStyle(fontSize: context.height(0.022)));
  }

  Text _onBoardTitle1(BuildContext context) {
    return Text(LocaleKeys.onboardTitle1.tr(),
        style: TextStyle(fontSize: context.height(0.024)));
  }

  Image _cheeseIconImage(BuildContext context) {
    return Image.asset(Kasset.onboardViewCheeseIconImage,
        fit: BoxFit.fill,
        width: context.width(0.13),
        height: context.height(0.06));
  }

  Image _brocoliIconImage(BuildContext context) {
    return Image.asset(Kasset.onboardViewBrocoliIconImage,
        fit: BoxFit.fill,
        width: context.width(0.13),
        height: context.height(0.06));
  }

  SizedBox _soupOfDayDescribe(BuildContext context) {
    return SizedBox(
      height: context.height(0.03),
      width: context.width(0.5),
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: context.titleLarge.fontSize,
          fontFamily: 'Bobbers',
        ),
        child: AnimatedTextKit(
          pause: const Duration(milliseconds: 500),
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(LocaleKeys.onboardSoupOfDayDescribe.tr(),
                speed: const Duration(milliseconds: 150)),
          ],
        ),
      ),
    );
  }

  SizedBox _soupOfDay(BuildContext context) {
    return SizedBox(
      height: context.height(0.03),
      width: context.width(0.5),
      child: Center(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: context.titleLarge.fontSize,
            fontFamily: 'Bobbers',
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 800),
            repeatForever: true,
            animatedTexts: [
              TyperAnimatedText(LocaleKeys.onboardSoupOfDay.tr(),
                  speed: const Duration(milliseconds: 400)),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _pastaImage(BuildContext context) {
    return Positioned(
      top: context.top(0.20),
      left: context.left(-0.07),
      child: Transform.rotate(
        angle: -0.29,
        alignment: Alignment.topLeft,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Kasset.onboardViewPastaImage)),
              borderRadius:
                  BorderRadius.all(Radius.circular(context.height(0.02)))),
          width: context.width(0.6),
          height: context.height(0.28),
        ),
      ),
    );
  }

  Positioned _terraceImage(BuildContext context) {
    return Positioned(
      top: context.top(0.05),
      right: context.top(-0.08),
      child: Transform.rotate(
        angle: 0.3,
        alignment: Alignment.topLeft,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Kasset.onboardViewTerraceImage)),
              borderRadius:
                  BorderRadius.all(Radius.circular(context.height(0.02)))),
          width: context.width(0.6),
          height: context.height(0.28),
        ),
      ),
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        navigation.navigaToClear(path: KRoute.LOGIN_PAGE);
      },
      label: const Icon(Icons.arrow_right, color: KThemeColor.white),
    );
  }
}
