import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waiter_order_app_lv/core/navigation/constants/route.dart';
import 'package:waiter_order_app_lv/core/navigation/navigation_service.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/bloc/login_bloc.dart';

class TableView extends StatelessWidget {
  TableView({super.key});

  final navigator = NavigationService.shared;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginBlocState>(
      listener: (context, state) {
        if (state.status.isLogout) {
          navigator.navigaToClear(path: KRoute.ONBOARD_PAGE);
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: Center(
          child: Column(
            children: [
              SizedBox(height: 200),
              Text("you log in already"),
              BlocBuilder<LoginBloc, LoginBlocState>(
                builder: (context, state) {
                  return ElevatedButton(
                      onPressed: (() {
                        context
                            .read<LoginBloc>()
                            .add(LoginBlocEvent.autenticationLoggedOut());
                      }),
                      child: Text("logout"));
                },
              )
            ],
          ),
        ));
      },
    );
  }
}
