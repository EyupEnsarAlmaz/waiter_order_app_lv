/* import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';

class CustomDialog2 extends StatelessWidget {
  String? titleText;
  List<dynamic>? items;
  String? Function(dynamic?)? getName;
  void Function()? onPressed;

  CustomDialog2({
    Key? key,
    this.titleText,
    this.items,
    this.getName,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: showAlertDialog(context),
      builder: (context, snapshot) {
        return Container(
          color: Colors.red,
          height: 200,
          width: 200,
        );
      },
    );
  }

  Future<void> showAlertDialog(BuildContext context) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          title: Text(titleText!),
          content: Container(
            height: 300,
            width: 300,
            child: ListView.builder(
              itemCount: items?.length,
              itemBuilder: (context, index) {
                return Container(
                  height: context.height(0.1),
                  width: context.width(0.15),
                  child: TextButton(
                    child: Text(
                      getName!(items?[index]) ?? "",
                      style: TextStyle(fontSize: 25),
                    ),
                    onPressed: () {
                      String? chooseValue = getName!(items?[index]);
                      onPressed!();
                      Navigator.pop(context, chooseValue);
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
 */