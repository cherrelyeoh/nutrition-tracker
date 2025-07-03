import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertest/pages/FoodScan/foodScanResults.dart';

class NutritionInfoCard extends StatefulWidget {
  final String mealType;
  final int calories;
  final int protein;
  final int carbs;
  final int fats;
  final String imageFile;
  final double? mealId;

  const NutritionInfoCard({
    super.key,
    required this.mealType,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fats,
    required this.imageFile,
    this.mealId,
  });

  @override
  // ignore: library_private_types_in_public_api
  _NutritionInfoCardState createState() => _NutritionInfoCardState();
}

class _NutritionInfoCardState extends State<NutritionInfoCard> {
  final bool _showDetails = true;

  // void _toggleDetails() {
  //   setState(() {
  //     _showDetails = !_showDetails;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background container with rounded corners
        Positioned.fill(
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),

        // Image on the left side
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              if (widget.mealId != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodScanResults(
                      mealId: widget.mealId!.toInt(),
                    ),
                  ),
                );
              }
            },
            child: Container(
              width: 160,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: MemoryImage(base64Decode(widget.imageFile)),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),

        // Nutrition information on the right side
        Positioned(
          right: -14.0,
          top: 16.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 136,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        widget.mealType,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (_showDetails) ...[
                const SizedBox(height: 8),
                _buildNutritionRow(
                    'assets/img/calories.png', 'Calories: ${widget.calories}'),
                _buildNutritionRow(
                    'assets/img/protein.png', 'Protein: ${widget.protein}g'),
                _buildNutritionRow(
                    'assets/img/carbs.png', 'Carbs: ${widget.carbs}g'),
                _buildNutritionRow(
                    'assets/img/fats.png', 'Fats: ${widget.fats}g'),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNutritionRow(String imagePath, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 7,
          height: 9,
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'League Spartan',
            fontWeight: FontWeight.w300,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
