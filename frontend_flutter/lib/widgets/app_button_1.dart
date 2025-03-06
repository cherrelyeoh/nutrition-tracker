import 'package:flutter/material.dart';

class AppButton1 extends StatelessWidget {
  final Color textColor;
  final dynamic backgroundColor;
  final Color borderColor;
  final String text;
  final double textSize;
  final FontWeight textWeight;
  double borderRadius;
  IconData? icon;
  double height;
  double width;
  bool? isIcon;
  final VoidCallback? onPressed;

  AppButton1(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.textSize,
      required this.borderRadius,
      this.textWeight = FontWeight.w400,
      this.icon,
      required this.height,
      required this.width,
      this.isIcon = false,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Make the button respond to taps
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor, width: 1.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: isIcon == false
              ? Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontWeight: textWeight),
                )
              : Icon(icon, color: textColor),
        ),
      ),
    );
  }
}
