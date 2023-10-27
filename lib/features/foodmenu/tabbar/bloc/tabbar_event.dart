part of 'tabbar_bloc.dart';

@freezed
class TabBarEvent with _$TabBarEvent {
  const factory TabBarEvent.tabChangedEvent(int? newTabIndex) = _TabChanged;
}
