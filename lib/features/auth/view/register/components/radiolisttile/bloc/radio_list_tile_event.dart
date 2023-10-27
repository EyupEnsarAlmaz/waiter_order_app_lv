part of 'radio_list_tile_bloc.dart';

@freezed
class RadioListTileEvent with _$RadioListTileEvent {
  const factory RadioListTileEvent.radioListTileSelected(Role? choosenRole) =
      _RadioListTileSelected;
}
