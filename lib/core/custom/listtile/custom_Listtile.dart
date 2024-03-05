import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';
import 'package:waiter_order_app_lv/core/theme/color_constants.dart';

class CustomListTile extends StatelessWidget {
  final Widget image;
  final String foodName;
  final int piece;
  final String price;
  final Function()? onTapAdd;
  final Function()? foodContent;
  final Function()? onTapRemove;

  CustomListTile({
    required this.foodName,
    required this.piece,
    required this.image,
    required this.onTapAdd,
    required this.foodContent,
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
              height: context.height(0.11),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        context.height(0.02)), // Image border
                    child: SizedBox.fromSize(
                      size: Size(context.width(0.35), context.height(0.2)),
                      child: image,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        context.sizedboxHeight(0.01),
                        Text(foodName,
                            style: TextStyle(
                                fontSize: context.titleLarge.fontSize)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            context.sizedboxWidth(0.01),
                            Text(price,
                                style: TextStyle(
                                    fontSize: context.titleLarge.fontSize)),
                            ClipOval(
                              child: Material(
                                color: Color(0xFF2F303F),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: onTapAdd,
                                      child: SizedBox(
                                          width: context.width(0.09),
                                          height: context.height(0.04),
                                          child: const Icon(Icons.add)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("$piece pieces",
                                style: TextStyle(
                                    fontSize: context.titleLarge.fontSize)),
                            context.sizedboxWidth(0.02),
                            InkWell(
                              child: Icon(Icons.info, size: 18.0),
                              onTap: foodContent,
                            ),
                          ],
                        )
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
