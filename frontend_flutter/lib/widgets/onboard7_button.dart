import 'package:flutter/material.dart';

class SelectableContainer extends StatefulWidget {
  final String text;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;
  final double width;
  final double height;
  final VoidCallback? onTap; // Optional callback when tapped

  const SelectableContainer({
    super.key,
    required this.text,
    this.selectedColor = Colors.yellow,
    this.unselectedColor = Colors.white,
    this.selectedTextColor = Colors.black,
    this.unselectedTextColor = const Color(0xFFFE6C6C),
    this.width = 323,
    this.height = 64,
    this.onTap,
  });

  @override
  _SelectableContainerState createState() => _SelectableContainerState();
}

class _SelectableContainerState extends State<SelectableContainer> {
  bool isSelected = false; // Track selection state

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected; // Toggle selection state
        });
        if (widget.onTap != null) {
          widget.onTap!(); // Call the callback if provided
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: ShapeDecoration(
          color: isSelected ? widget.selectedColor : widget.unselectedColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected
                  ? widget.selectedTextColor
                  : widget.unselectedTextColor,
              fontSize: 24,
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
