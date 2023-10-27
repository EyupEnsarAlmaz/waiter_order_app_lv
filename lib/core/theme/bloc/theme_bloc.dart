import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/theme/theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
            isDark: false, themeData: CustomTheme.shared.lightThemeData())) {
    on<_ThemeChanged>(_themeChanged);
    on<_InitialTheme>(_initialTheme);
  }
  Future<void> _initialTheme(_InitialTheme event, Emitter emit) async {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return emit(state.copyWith(
        themeData: isDarkMode
            ? CustomTheme.shared.darkThemeData()
            : CustomTheme.shared.lightThemeData()));
  }

  Future<void> _themeChanged(_ThemeChanged event, Emitter emit) async {
    return emit(state.copyWith(
        isDark: event.isDark,
        themeData: event.isDark!
            ? CustomTheme.shared.darkThemeData()
            : CustomTheme.shared.lightThemeData()));
  }
}
