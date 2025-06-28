import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class MealLogCard extends StatelessWidget {
  final String imageBase64;
  final String foodName;
  final String description;

  const MealLogCard({
    super.key,
    required this.imageBase64,
    required this.foodName,
    required this.description,
  });

  Uint8List? _getImageBytes() {
    if (imageBase64.trim().isEmpty) return null;

    try {
      String cleanBase64 = imageBase64.trim();

      // Remove data URL prefix if present
      if (cleanBase64.contains(',')) {
        cleanBase64 = cleanBase64.split(',').last;
      }

      // Fix padding if needed
      int remainder = cleanBase64.length % 4;
      if (remainder != 0) {
        cleanBase64 += '=' * (4 - remainder);
      }

      return base64Decode(cleanBase64);
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final imageBytes = _getImageBytes();

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Top Image - Sticky to top
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
          child: imageBytes != null
              ? Image.memory(
                  imageBytes,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  'assets/img/lunch1.png', // fallback image
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
        ),

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
