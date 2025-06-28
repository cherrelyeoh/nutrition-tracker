import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/pages/FoodScan/foodScanResults.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/services/api/export.dart';
import 'package:fluttertest/widgets/image_picker_widget.dart';
import 'dart:convert';

import 'package:fluttertest/widgets/meal_calendar_widget.dart';

class MealCalendarMain extends StatefulWidget {
  const MealCalendarMain({super.key});

  @override
  _MealCalendarMainState createState() => _MealCalendarMainState();
}

class _MealCalendarMainState extends State<MealCalendarMain> {
  int? selectedIndex; // 👈 Tracks the selected card index

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String getWeekdayLabel(DateTime date) {
    return ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][date.weekday % 7];
  }

  final Map<String, String> mealTypeIcons = {
    'Breakfast': 'assets/icons/calendar_breakfast.png',
    'Lunch': 'assets/icons/calendar_lunch.png',
    'Dinner': 'assets/icons/calendar_dinner.png',
  };

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now(); // ✅ Declare here
    final dates =
        List.generate(21, (i) => today.subtract(Duration(days: 10 - i)));
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom Header
              SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint("Going back to home page...");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainHomePage()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/img/arrow-left.svg',
                        width: 12,
                        height: 12,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      // Forces "Dinner" to take up available space
                      child: Text(
                        'Weekly Calendar',
                        style: TextStyle(
                          color: Color(0xFFFE6C6C),
                          fontSize: 22,
                          fontFamily: 'League Spartan',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.notifications,
                            size: 27, color: Color(0xFFFE6C6C)),
                        SizedBox(width: 15),
                        Icon(Icons.settings,
                            size: 27, color: Color(0xFFFE6C6C)),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 80,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: dates.asMap().entries.map((entry) {
                      final index = entry.key;
                      final date = entry.value;
                      final day = date.day.toString();
                      final weekday = getWeekdayLabel(date);
                      final isSelected = index == selectedIndex;

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6), // spacing between items
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 69,
                            height: 78,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Color(0xFFFE6C6C)
                                  : const Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  weekday,
                                  style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : const Color(0xFF3B3B3B),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.4,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  day,
                                  style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : const Color(0xFFAAAAAA),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              MealCalendarWidget(
                mealType: 'Dinner',
                mealIcon: mealTypeIcons['Dinner'] ??
                    'assets/icons/calendar_snack.png',
                calAmount: '500',
                calTotalAmount: '600',
                imagePathCarbs: 'assets/icons/carbs.png',
                imagePathProtein: 'assets/icons/protein.png',
                imagePathFats: 'assets/icons/fats.png',
              ),

              const SizedBox(height: 15),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FoodScanResults(
                          mealId: 123), // 👈 Pass mealId here
                    ),
                  );
                },
                child: Container(
                  width: 355,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.white.withAlpha(40),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF808080),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Meal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
