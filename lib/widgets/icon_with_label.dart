
import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    super.key,
    @required this.icon,
    @required this.text,
    @required this.textColor,
    @required this.iconColor,
  });

  final IconData? icon;
  final String? text;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon ?? Icons.error, size: 30.0, color: iconColor ?? Colors.black),
        SizedBox(height: 8),
        Text(
          text!,
          style: TextStyle(fontSize: 12, color: textColor ?? Colors.black),
        ),
      ],
    );
  }
}