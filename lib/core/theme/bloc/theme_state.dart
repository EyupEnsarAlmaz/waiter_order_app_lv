part of 'theme_bloc.dart';

enum ThemeStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == ThemeStatus.initial;
  bool get isLoading => this == ThemeStatus.loading;
  bool get isSuccess => this == ThemeStatus.success;
  bool get isFailure => this == ThemeStatus.failure;
}

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState(
      {@Default(ThemeStatus.initial) ThemeStatus status,
      bool? isDark,
      ThemeData? themeData}) = _ThemeState;
}
