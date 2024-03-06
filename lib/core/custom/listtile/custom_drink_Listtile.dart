import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';

class CustomDrinkListTile extends StatelessWidget {
  final String drinkName;
  final int piece;
  final String price;
  final Function()? onTapAdd;
  final Function()? onTapRemove;

  const CustomDrinkListTile({
    super.key,
    required this.drinkName,
    required this.piece,
    required this.onTapAdd,
    required this.onTapRemove,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: KThemeColor.customListTile,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              width: context.width(0.99),
              height: context.height(0.07),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(drinkName,
                            style: TextStyle(
                                fontSize: context.titleLarge.fontSize)),
                        Text("$price €",
                            style: TextStyle(
                                fontSize: context.titleLarge.fontSize)),
                        ClipOval(
                          child: Material(
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: onTapAdd,
                                  child: SizedBox(
                                      width: context.width(0.09),
                                      height: context.height(0.04),
                                      child: const Icon(Icons.add)),
                                ),
                                Text("$piece",
                                    style: TextStyle(
                                        fontSize: context.titleLarge.fontSize)),
                                InkWell(
                                  onTap: onTapRemove,
                                  child: SizedBox(
                                      width: context.width(0.09),
                                      height: context.height(0.04),
                                      child: const Icon(Icons.remove)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
