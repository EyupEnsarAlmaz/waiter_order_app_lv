import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';
import 'package:waiter_order_app_lv/core/translations/locale_keys.g.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/components/radiolisttile/bloc/radio_list_tile_bloc.dart';

class CustomRadioListTile extends StatelessWidget {
  CustomRadioListTile({Key? key, required this.title, required this.value})
      : super(key: key);

  final String title;
  Role? groupValue;
  Role value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioListTileBloc, RadioListTileState>(
      builder: (context, state) {
        return RadioListTile(
          title: Text(title),
          value: value,
          groupValue: groupValue,
          onChanged: (Role? value) {
            print(value);
            groupValue = value;
            context
                .read<RadioListTileBloc>()
                .add(RadioListTileEvent.radioListTileSelected(value));
          },
        );
      },
    );
  }
}
