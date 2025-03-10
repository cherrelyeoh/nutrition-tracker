import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final String? placeholderInput;
  final bool isObscureText;
  final double textSize;
  final Color textColor;
  final IconData? icon;
  const LoginInput(
      {super.key,
      required this.height,
      required this.width,
      required this.backgroundColor,
      this.placeholderInput,
      this.isObscureText = false,
      this.textSize = 14,
      this.textColor = Colors.black,
      this.icon});

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: const Color(0x19006EE9), width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19006EE9),
            blurRadius: 6,
            offset: Offset(1, 2),
          )
        ],
      ),
      child: Row(
        children: [
          // Left Red Icon Box
          Container(
            width: widget.height,
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Center(
              // ✅ Centers the icon inside the container
              child: Icon(
                widget.icon, // Change to any icon you want
                color: Colors.white, // Adjust color as needed
                size: widget.height * 0.4, // Icon size relative to container
              ),
            ),
          ),
          const SizedBox(width: 20), // Space between icon box and text

          // Password Text
          Expanded(
            child: TextField(
              obscureText: widget.isObscureText, // Hide password input
              decoration: InputDecoration(
                hintText: widget.placeholderInput,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: widget.textSize,
                fontFamily: 'Poppins',
              ),
            ),
          )
        ],
      ),
    );
  }
}
