import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/macros_small_widget.dart';

class MealCalendarWidget extends StatefulWidget {
  const MealCalendarWidget({
    super.key,
  });

  @override
  State<MealCalendarWidget> createState() => _MealCalendarWidgetState();
}

class _MealCalendarWidgetState extends State<MealCalendarWidget> {
  final List<Map<String, dynamic>> macros = [
    {
      'title': 'Protein',
      'amount': '400/400g',
      'icon': Icons.fitness_center,
      'color': Colors.red,
      'barColor2': const Color(0xFFC7B290),
      'barColor1': Colors.white
    },
    {
      'title': 'Carbs',
      'amount': '300/300g',
      'icon': Icons.fastfood,
      'color': Colors.blue,
      'barColor1': const Color(0xFFC7B290),
      'barColor2': const Color(0xFFB28F5E)
    },
    {
      'title': 'Fats',
      'amount': '100/200g',
      'icon': Icons.local_pizza,
      'color': Colors.orange,
      'barColor2': const Color(0xFFC49A2C),
      'barColor1': const Color(0xFFC7B290)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 183,
      decoration: ShapeDecoration(
        color: const Color(0xFF4F4F4F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Text(
                    'Breakfast',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '🥐',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),

              // Right side: 2 round icons
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFFE6C6C),
                      shape: OvalBorder(),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.more_horiz,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFFE6C6C),
                      shape: OvalBorder(),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Macros Row
          Row(
            children: List.generate(macros.length * 2 - 1, (index) {
              if (index.isOdd) return const SizedBox(width: 8); // spacing
              final i = index ~/ 2;
              final macro = macros[i];
              return Expanded(
                child: MacrosSmallWidget(
                  title: macro['title'],
                  amount: macro['amount'],
                  icon: macro['icon'],
                  color: macro['color'],
                  barColor1: macro['barColor1'],
                  barColor2: macro['barColor2'],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
