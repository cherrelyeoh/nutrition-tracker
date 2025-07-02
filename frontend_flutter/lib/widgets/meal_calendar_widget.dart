import 'package:flutter/material.dart';
import 'package:fluttertest/pages/FoodScan/foodScanMain.dart';
import 'package:fluttertest/widgets/macros_small_widget.dart';

class MealCalendarWidget extends StatefulWidget {
  final String calAmount;
  final String calTotalAmount;
  final String? imagePathProtein;
  final String? imagePathCarbs;
  final String? imagePathFats;
  final String mealType;
  final String mealIcon;

  const MealCalendarWidget({
    super.key,
    required this.calAmount,
    required this.calTotalAmount,
    this.imagePathProtein,
    this.imagePathCarbs,
    this.imagePathFats,
    required this.mealType,
    required this.mealIcon,
  });

  @override
  State<MealCalendarWidget> createState() => _MealCalendarWidgetState();
}

class _MealCalendarWidgetState extends State<MealCalendarWidget> {
  late List<Map<String, dynamic>> macros;
  @override
  void initState() {
    super.initState();

    macros = [
      {
        'title': 'Protein',
        'amount': '400',
        'totalAmount': '500',
        'icon': Icons.fitness_center,
        'color': Colors.white,
        'barColor2': const Color(0xFFC7B290),
        'barColor1': Colors.white,
      },
      {
        'title': 'Carbs',
        'amount': '250',
        'totalAmount': '350',
        'icon': Icons.fastfood,
        'color': const Color(0xFFB28F5E),
        'barColor1': const Color(0xFFC7B290),
        'barColor2': const Color(0xFFB28F5E),
      },
      {
        'title': 'Fats',
        'amount': '40',
        'totalAmount': '100',
        'icon': Icons.local_pizza,
        'color': const Color(0xFFC7B290),
        'barColor2': const Color(0xFFC49A2C),
        'barColor1': const Color(0xFFC7B290),
      },
    ];
  }

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
                children: [
                  Text(
                    widget.mealType,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    widget.mealIcon,
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodScanMain(
                                  mealType: widget.mealType,
                                )),
                      );
                    },
                    child: Container(
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
                  )
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          LayoutBuilder(
            builder: (context, constraints) {
              final double totalWidth = constraints.maxWidth;
              final double calAmount = double.tryParse(widget.calAmount) ?? 0;
              final double calTotal =
                  double.tryParse(widget.calTotalAmount) ?? 1;
              final double progressPercent = calAmount / calTotal;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline
                        .alphabetic, // Required for baseline alignment
                    children: [
                      Image.asset(
                        'assets/icons/fire.png',
                        width: 25,
                        height: 25,
                      ),
                      const Text(
                        'Calories',
                        style: TextStyle(
                          color: Color(0xFFFFB09A),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${widget.calAmount} / ${widget.calTotalAmount}kCal',
                        style: const TextStyle(
                          color: Color(0xFFFFB09A),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Stack(
                    children: [
                      Container(
                        width: totalWidth,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFB09A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        width: totalWidth * progressPercent.clamp(0.0, 1.0),
                        height: 6,
                        margin: const EdgeInsets.only(top: 1),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFE6C6C),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 16),

          // Macros Row
          Row(
            children: List.generate(macros.length * 2 - 1, (index) {
              if (index.isOdd) return const SizedBox(width: 15); // spacing
              final i = index ~/ 2;
              final macro = macros[i];
              return Expanded(
                child: MacrosSmallWidget(
                  title: macro['title'],
                  amount: macro['amount'],
                  totalAmount: macro['totalAmount'],
                  icon: macro['icon'],
                  color: macro['color'],
                  barColor1: macro['barColor1'],
                  barColor2: macro['barColor2'],
                  imagePath: macro['imagePath'],
                  progressPercent:
                      int.parse(macro['totalAmount'].toString()) != 0
                          ? int.parse(macro['amount'].toString()) /
                              int.parse(macro['totalAmount'].toString())
                          : 0.0,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
