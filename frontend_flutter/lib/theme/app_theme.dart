import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Poppins', // ✅ Your global font
      primaryColor: const Color(0xFFFE6C6C),
      scaffoldBackgroundColor: Colors.grey[900],
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color(0xFFFFB6B6),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFE6C6C),
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        // Add more styles as needed
      ),
    );
  }
}
