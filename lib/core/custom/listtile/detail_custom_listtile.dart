import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';

class CustomDetailListtile extends StatelessWidget {
  final Widget image;
  final String foodName;
  final String price;
  final String? choosenSide;
  final String? choosenSauce;
  final String? choosenHowCook;
  final Function()? onTapAdd;
  final Function()? onChangeSide;
  final Function()? onchangeSauce;
  final Function()? onChangeCookStyle;
  final Function()? foodContent;
  final Function()? onTapRemove;

  CustomDetailListtile({
    required this.foodName,
    required this.choosenSide,
    required this.choosenSauce,
    required this.onChangeSide,
    required this.onchangeSauce,
    required this.onChangeCookStyle,
    required this.choosenHowCook,
    required this.image,
    required this.onTapAdd,
    required this.foodContent,
    required this.onTapRemove,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    bool hasCookStyle = choosenHowCook != null;
    bool hasSauce = choosenSauce != null;
    bool hasSide = choosenSide != null;
    double containerHeight = context.height(0.15);
    if (hasCookStyle && hasSauce && hasSide) {
      containerHeight = context.height(0.20);
    } else if (hasSauce && hasSide) {
      containerHeight = context.height(0.16);
    } else if (hasSide) {
      containerHeight = context.height(0.15);
    }

    return Container(
      width: context.width(0.95),
      height: containerHeight,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius:
                BorderRadius.circular(context.height(0.02)), // Image border
            child: SizedBox.fromSize(
              size: Size(context.width(0.35), context.height(0.20)),
              child: image,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                context.sizedboxHeight(0.01),
                Text(foodName,
                    style: TextStyle(fontSize: context.titleLarge.fontSize)),
                context.sizedboxHeight(0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    context.sizedboxWidth(0.01),
                    Text(price,
                        style:
                            TextStyle(fontSize: context.titleLarge.fontSize)),
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
                Column(
                  children: [
                    Container(
                      height: hasSide ? 30 : 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            choosenSide ?? "",
                            style: TextStyle(fontSize: hasSide ? 20 : 0),
                          ),
                          hasSide
                              ? IconButton(
                                  onPressed: onChangeSide,
                                  icon: Icon(Icons.change_circle))
                              : SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      height: hasSauce ? 30 : 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            choosenSauce ?? "",
                            style: TextStyle(fontSize: hasSauce ? 20 : 0),
                          ),
                          hasSauce
                              ? IconButton(
                                  onPressed: onchangeSauce,
                                  icon: Icon(Icons.change_circle))
                              : SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      height: hasCookStyle ? 30 : 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            choosenHowCook ?? "",
                            style: TextStyle(fontSize: hasCookStyle ? 20 : 0),
                          ),
                          hasCookStyle
                              ? IconButton(
                                  onPressed: onChangeCookStyle,
                                  icon: Icon(Icons.change_circle))
                              : SizedBox(),
                        ],
                      ),
                    ),
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
