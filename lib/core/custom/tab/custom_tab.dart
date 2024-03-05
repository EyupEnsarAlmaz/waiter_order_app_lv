import 'package:flutter/material.dart';
import 'package:waiter_order_app_lv/core/extension/context_extension.dart';

class CustomTab extends StatelessWidget {
  CustomTab({
    Key? key,
    required this.icon,
    required this.iconText,
  }) : super(key: key);
  String icon;
  String iconText;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(icon,
              width: context.width(0.09), height: context.height(0.04)),
          SizedBox(width: context.width(0.03)),
          Text(iconText, style: context.titleMedium),
        ],
      ),
    );
  }
}
