import 'package:flutter/material.dart';

class AppButton1 extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final double textSize;
  double borderRadius;
  IconData? icon;
  double height;
  double width;
  bool? isIcon;

  AppButton1(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.textSize,
      required this.borderRadius,
      this.icon,
      required this.height,
      required this.width,
      this.isIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(
        child: isIcon == false
            ? Text(
                text,
                style: TextStyle(color: textColor, fontSize: textSize),
              )
            : Icon(icon, color: textColor),
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor, width: 1.0)),
    );
  }
}
