import 'package:flutter/material.dart';

class AppButton2 extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  double size;
  bool? isIcon;

  AppButton2(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      this.icon,
      required this.size,
      this.isIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor, width: 1.0)),
      child: Center(
        child: isIcon == false
            ? Text(
                text,
                style: TextStyle(color: textColor),
              )
            : Icon(icon, color: textColor),
      ),
    );
  }
}
