import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_list_tile_event.dart';
part 'radio_list_tile_state.dart';
part 'radio_list_tile_bloc.freezed.dart';

class RadioListTileBloc extends Bloc<RadioListTileEvent, RadioListTileState> {
  RadioListTileBloc()
      : super(const RadioListTileState(choosenRole: Role.waiter)) {
    on<_RadioListTileSelected>(_radioListTileSelected);
  }

  Future<void> _radioListTileSelected(
      _RadioListTileSelected event, Emitter emit) async {
    try {
      emit(state.copyWith());
      emit(state.copyWith(choosenRole: event.choosenRole));
    } catch (Exception) {}
  }
}
