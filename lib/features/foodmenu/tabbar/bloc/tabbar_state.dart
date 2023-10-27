part of 'tabbar_bloc.dart';

enum TabbarStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == TabbarStatus.initial;
  bool get isLoading => this == TabbarStatus.loading;
  bool get isSuccess => this == TabbarStatus.success;
  bool get isFailure => this == TabbarStatus.failure;
}

@freezed
class TabBarState with _$TabBarState {
  const factory TabBarState(
      {@Default(TabbarStatus.initial) TabbarStatus status,
      int? newTabIndex}) = _TabbarState;
}
