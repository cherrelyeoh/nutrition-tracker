import 'package:flutter/material.dart';

class SelectableContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? selectedTextColor;
  final Color? unselectedTextColor;
  final double width;
  final double height;
  final VoidCallback? onTap;
  final int fontSize;

  const SelectableContainer(
      {super.key,
      required this.text,
      required this.isSelected,
      this.selectedColor = Colors.yellow,
      this.unselectedColor = Colors.white,
      this.selectedTextColor = Colors.black,
      this.unselectedTextColor = const Color(0xFFFE6C6C),
      this.width = 323,
      this.height = 64,
      this.onTap,
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: ShapeDecoration(
          color: isSelected ? selectedColor : unselectedColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? selectedTextColor : unselectedTextColor,
              fontSize: fontSize.toDouble(),
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
