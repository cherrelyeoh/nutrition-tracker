// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/FoodScan/foodScanResults.dart';
import 'package:fluttertest/services/newapi/bigbum.swagger.dart';
import 'package:fluttertest/theme/app_style.dart';

import 'package:fluttertest/widgets/meal_calendar_widget.dart';

class MealCalendarMain extends StatefulWidget {
  final num? userId;
  const MealCalendarMain({super.key, this.userId});

  @override
  _MealCalendarMainState createState() => _MealCalendarMainState();
}

class _MealCalendarMainState extends State<MealCalendarMain> {
  int? selectedIndex; // 👈 Tracks the selected card index
  // final ScrollController _scrollController = ScrollController();

  DateTime today = DateTime.now();
  DateTime currentMonth = DateTime.now();
  List<Widget> mealWidgets = [];
  List<UserMealLogEntity> userMealLogs = [];

  List<DateTime> allAvailableDates = []; // All valid dates
  List<DateTime> visibleDates = []; // Filtered by current month
  DateTime? selectedDate;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    debugPrint('🟨 MealCalendarMain init - userId: ${widget.userId}');
    _loadUserMealData(DateTime.now());
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

  Future<void> _loadUserMealData(DateTime clickedDate) async {
    debugPrint('Calling user meal data for $clickedDate');
    final bigbumService = Bigbum.create(
      baseUrl:
          Uri.parse('http://10.0.2.2:3000'), // Replace with your API base URL
    );
    final String dateString =
        '${clickedDate.year.toString().padLeft(4, '0')}-${clickedDate.month.toString().padLeft(2, '0')}-${clickedDate.day.toString().padLeft(2, '0')}';

    final startDate = '$dateString 00:00:00';
    final endDate = '$dateString 23:59:59';
    try {
      final response = await bigbumService.UserMealLogController_getUserMeals(
        userId: widget.userId,
        startDate: startDate,
        endDate: endDate,
      );
      if (response.isSuccessful && response.body != null) {
        final userMealLogs = response.body!;

        debugPrint("Querying meals from user of id ${widget.userId}!");
        debugPrint("🔁 Response: $userMealLogs");

        // Reset all totals to 0 before aggregating new data
        mealTypeTotals.forEach((key, value) {
          value['calories'] = 0;
          value['protein'] = 0;
          value['carbs'] = 0;
          value['fats'] = 0;
        });

        for (var meal in userMealLogs) {
          String type = meal.mealType ?? 'Lunch';
          if (mealTypeTotals.containsKey(type)) {
            mealTypeTotals[type]!['calories'] =
                mealTypeTotals[type]!['calories']! + (meal.calories ?? 0);
            mealTypeTotals[type]!['protein'] =
                mealTypeTotals[type]!['protein']! + (meal.protein ?? 0);
            mealTypeTotals[type]!['carbs'] =
                mealTypeTotals[type]!['carbs']! + (meal.carbs ?? 0);
            mealTypeTotals[type]!['fats'] =
                mealTypeTotals[type]!['fats']! + (meal.fats ?? 0);
          }
        }

        debugPrint("====== Meal Totals ======");

        mealTypeTotals.forEach((mealType, nutrients) {
          debugPrint("🍽️ $mealType Totals:");
          debugPrint("  Calories: ${nutrients['calories'] ?? 0}");
          debugPrint("  Protein : ${nutrients['protein'] ?? 0} g");
          debugPrint("  Carbs   : ${nutrients['carbs'] ?? 0} g");
          debugPrint("  Fats    : ${nutrients['fats'] ?? 0} g");
          debugPrint("--------------------------");
        });

        debugPrint("==========================");

        setState(() {
          this.userMealLogs = response.body!;
        });
      }
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      debugPrint('❌ Single Meal Retrieval: $statusCode');
      debugPrint('Response data: ${e.response?.data}');
    }
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
    'Snack': 'assets/icons/calendar_snack.png',
  };

  Map<String, Map<String, double>> mealTypeTotals = {
    'Breakfast': {'calories': 0, 'protein': 0, 'carbs': 0, 'fats': 0},
    'Lunch': {'calories': 0, 'protein': 0, 'carbs': 0, 'fats': 0},
    'Dinner': {'calories': 0, 'protein': 0, 'carbs': 0, 'fats': 0},
    'Snack': {'calories': 0, 'protein': 0, 'carbs': 0, 'fats': 0},
  };

  Map<String, bool> mealTypeExpanded = {
    'Breakfast': false,
    'Lunch': false,
    'Dinner': false,
    'Snack': false,
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
                          onTap: () async {
                            final clickedDate = dates[index];

                            setState(() {
                              selectedIndex = index;
                              selectedDate = clickedDate;
                            });

                            await _loadUserMealData(clickedDate);
                          },
                          child: Container(
                            width: 69,
                            height: 78,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color(0xFFFE6C6C)
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

              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) =>
              //             FoodScanResults(mealId: 1), // 👈 Pass mealId here
              //       ),
              //     );
              //   },
              //   child: Container(
              //     width: 355,
              //     height: 46,
              //     decoration: ShapeDecoration(
              //       color: Colors.white.withAlpha(40),
              //       shape: RoundedRectangleBorder(
              //         side: const BorderSide(
              //           width: 1,
              //           color: Color(0xFF808080),
              //         ),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //     padding: const EdgeInsets.symmetric(horizontal: 16),
              //     child: const Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Text(
              //           'Meal',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 16,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //         Icon(
              //           Icons.arrow_forward_ios,
              //           size: 18,
              //           color: Colors.white,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              ...mealTypeIcons.entries.map((entry) {
                final mealType = entry.key;
                final iconPath = entry.value;

                final totals = mealTypeTotals[mealType] ??
                    {
                      'calories': 0,
                      'protein': 0,
                      'carbs': 0,
                      'fats': 0,
                    };

                final mealsOfType =
                    userMealLogs.where((m) => m.mealType == mealType).toList();
                final isExpanded = mealTypeExpanded[mealType] ?? false;

                return Column(
                  children: [
                    MealCalendarWidget(
                      mealType: mealType,
                      mealIcon: iconPath,
                      calAmount: totals['calories']?.toStringAsFixed(0) ?? '0',
                      calTotalAmount: '800',
                      proteinTotalAmount: mealTypeTotals[mealType]?['protein']
                              ?.toStringAsFixed(0) ??
                          '0',
                      carbsTotalAmount: mealTypeTotals[mealType]?['carbs']
                              ?.toStringAsFixed(0) ??
                          '0',
                      fatsTotalAmount: mealTypeTotals[mealType]?['fats']
                              ?.toStringAsFixed(0) ??
                          '0',
                      isExpanded: mealTypeExpanded[mealType] ?? false,
                      onToggleMeals: () {
                        setState(() {
                          mealTypeExpanded[mealType] =
                              !(mealTypeExpanded[mealType] ?? false);
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    if (mealTypeExpanded[mealType] ?? false)
                      ...mealsOfType.map((meal) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FoodScanResults(
                                        mealId: meal.id?.toInt()),
                                  ),
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 46,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: ShapeDecoration(
                                  color: Colors.white.withAlpha(40),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF808080)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      meal.mealName ?? 'Meal',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        size: 18, color: Colors.white),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    const SizedBox(height: 20),
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
