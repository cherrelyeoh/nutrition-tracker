import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String foodName;
  final String restaurantName;

  const FoodCard({
    Key? key,
    required this.imagePath,
    required this.foodName,
    required this.restaurantName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900], // Background color
        border: Border.all(color: Colors.white, width: 2), // Border color
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Column(
        children: [
          // Image section (Top 60%)
          Container(
            height: 138 * 0.7,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Bottom section (40%) with content
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  foodName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFE6C6C),
                  ),
                ),
                Text(
                  restaurantName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFE6C6C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
