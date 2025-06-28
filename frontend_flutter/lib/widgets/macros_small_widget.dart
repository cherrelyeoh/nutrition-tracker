import 'dart:ffi';

import 'package:flutter/material.dart';

class MacrosSmallWidget extends StatelessWidget {
  final String title;
  final String amount;
  final String totalAmount;
  final IconData? icon;
  final String? imagePath;
  final Color color;
  final Color barColor1;
  final Color barColor2;
  final double progressPercent;

  const MacrosSmallWidget({
    super.key,
    required this.title,
    required this.amount,
    required this.totalAmount,
    this.icon,
    this.imagePath,
    required this.color,
    this.progressPercent = 0.25,
    this.barColor1 = Colors.white,
    this.barColor2 = const Color(0xFFC7B290),
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double totalWidth = constraints.maxWidth;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                imagePath != null
                    ? Image.asset(imagePath!, width: 27, height: 27)
                    : Icon(icon, size: 27, color: color),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '$amount / ${totalAmount}g',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 4),
            Stack(
              children: [
                Container(
                  width: totalWidth,
                  height: 8,
                  decoration: BoxDecoration(
                    color: barColor1,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: totalWidth * progressPercent.clamp(0.0, 1.0),
                  height: 6,
                  margin: const EdgeInsets.only(top: 1),
                  decoration: BoxDecoration(
                    color: barColor2,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
