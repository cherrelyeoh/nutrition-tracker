import 'dart:convert';

import 'package:flutter/material.dart';

class MealLogCard extends StatelessWidget {
  final String imageBase64;
  final String foodName;
  final String description;

  MealLogCard({
    super.key,
    required this.imageBase64,
    required this.foodName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Top Image - Sticky to top
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
          child: Image.memory(
            base64Decode(imageBase64), // your base64 string here
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),

        // Left and Right Buttons on top
        // Positioned(
        //   top: 40,
        //   left: 20,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.redAccent,
        //     child: Icon(Icons.close, color: Colors.white),
        //   ),
        // ),
        // Positioned(
        //   top: 40,
        //   right: 20,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.green,
        //     child: Icon(Icons.check, color: Colors.white),
        //   ),
        // ),

        // Bottom Info Card (overlapping image)
        Positioned(
          bottom: -60,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                const Icon(Icons.thumb_up_alt_rounded,
                    color: Colors.greenAccent),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
