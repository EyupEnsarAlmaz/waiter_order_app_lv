import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';

class CustomListTile extends StatelessWidget {
  final Widget image;
  final String foodName;
  final String price;

  CustomListTile({
    required this.foodName,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(0.88),
      height: context.height(0.15),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius:
                BorderRadius.circular(context.height(0.02)), // Image border
            child: SizedBox.fromSize(
              size: Size(context.width(0.35), context.height(0.2)),
              child: image,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                context.sizedboxHeight(0.03),
                Text(foodName,
                    style: TextStyle(fontSize: context.titleLarge.fontSize)),
                context.sizedboxHeight(0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    context.sizedboxWidth(0.03),
                    Text(price,
                        style:
                            TextStyle(fontSize: context.titleLarge.fontSize)),
                    ClipOval(
                      child: Material(
                        color: Color(0xFF2F303F),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                              width: context.width(0.09),
                              height: context.height(0.04),
                              child: const Icon(Icons.add)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
