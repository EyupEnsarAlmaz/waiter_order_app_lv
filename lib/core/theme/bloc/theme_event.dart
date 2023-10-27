part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.themeChangedEvent(
      bool? isDark, ThemeData? themeData) = _ThemeChanged;
  const factory ThemeEvent.initialTheme() = _InitialTheme;
}
