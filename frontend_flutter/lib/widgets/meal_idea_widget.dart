import 'package:flutter/material.dart';

class MealIdeaCard extends StatelessWidget {
  final String imagePath;
  final String foodName;
  final String restaurantName;

  const MealIdeaCard({
    super.key,
    required this.imagePath,
    required this.foodName,
    required this.restaurantName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 138 * 0.6, // 60% of the container's height
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
