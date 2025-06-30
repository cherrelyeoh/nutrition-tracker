import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/pages/FoodScan/foodScanResults.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/services/api/export.dart';
import 'package:fluttertest/theme/app_style.dart';
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
  // final ScrollController _scrollController = ScrollController();

  DateTime today = DateTime.now();
  DateTime currentMonth = DateTime.now();

  List<DateTime> allAvailableDates = []; // All valid dates
  List<DateTime> visibleDates = []; // Filtered by current month

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
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
    final today = DateTime.now();
    final List<DateTime> dates = [];

    for (int i = 0; i < 7; i++) {
      final date = today.subtract(Duration(days: i));
      if (date.month == today.month) {
        dates.add(date);
      }
    }

    dates.sort((a, b) => a.compareTo(b)); // Sort ascending (earliest to latest)

    selectedIndex ??= dates.indexWhere((d) =>
        d.day == today.day && d.month == today.month && d.year == today.year);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.page(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Custom Header
              SizedBox(
                height: 80,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  // padding: const EdgeInsets.symmetric(horizontal: 16),
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
