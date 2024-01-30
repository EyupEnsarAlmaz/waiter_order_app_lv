import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/helpers/language_helper/language_helper.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/core/theme/bloc/theme_bloc.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/bloc/login_bloc.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/bloc/register_bloc_bloc.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/components/radiolisttile/bloc/radio_list_tile_bloc.dart';
import 'package:waiter_order_app_lv/features/detail/view/detail_order_view.dart';
import 'package:waiter_order_app_lv/features/foodmenu/basket/bloc/food_basket_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/bloc/food_menu_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/search/bloc/search_bloc.dart';
import 'package:waiter_order_app_lv/features/foodmenu/tabbar/bloc/tabbar_bloc.dart';
import 'package:waiter_order_app_lv/features/splash/view/splash_view.dart';
import 'package:waiter_order_app_lv/features/table/bloc/table_bloc.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => ThemeBloc()..add(const ThemeEvent.initialTheme()),
      ),
      BlocProvider(
        create: (context) => RegisterBloc(),
      ),
      BlocProvider(
        create: (context) => RadioListTileBloc(),
      ),
      BlocProvider(
        create: (context) => LoginBloc(),
      ),
      BlocProvider(
        create: (context) => FoodMenuBloc(),
      ),
      BlocProvider(
        create: (context) => TabBarBloc(),
      ),
      BlocProvider(
        create: (context) => FoodBasketBloc(),
      ),
      BlocProvider(
        create: (context) => TableBloc(),
      ),
       BlocProvider(
        create: (context) => SearchBloc(),
      ),
    ],
    child: LanguageHelper.setupLocales(const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state.themeData,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          initialRoute: KRoute.SPLASH_PAGE,
          onGenerateRoute: NavigationRoute.shared.generateRoute,
          navigatorKey: NavigationService.shared.navigatorKey,
          locale: const Locale('tr'),
          title: 'Waitorder',
          home: const SplasView(),
        );
      },
    );
  }
}
