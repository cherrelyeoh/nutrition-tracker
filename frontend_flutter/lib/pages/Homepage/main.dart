// ignore_for_file: library_private_types_in_public_api

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/BodyScan/bodyScanMain.dart';
import 'package:fluttertest/pages/FoodScan/foodScanMain.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/services/newapi/bigbum.swagger.dart';
import 'package:fluttertest/widgets/macros_small_widget.dart';
import 'package:fluttertest/widgets/meal_idea_widget.dart';
import 'package:fluttertest/widgets/meal_type_widget.dart';

class MainHomePage extends StatefulWidget {
  final num? userId;
  final String? userName;

  const MainHomePage({
    super.key,
    this.userId,
    this.userName,
  });

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  List<dynamic> data = [];
  bool isLoading = true;
  bool hasError = false;
  List<UserMealLogEntity> userMealLogs = [];
  double totalCalories = 0;
  double totalProtein = 0;
  double totalCarbs = 0;
  double totalFats = 0;

  final List<Map<String, String>> foodItems = [
    {
      "image": "assets/img/breakfast1.png",
      "name": "Pancakes",
      "restaurant": "Diner A"
    },
    {
      "image": "assets/img/breakfast1.png",
      "name": "Waffles",
      "restaurant": "Cafe B"
    },
    {
      "image": "assets/img/breakfast1.png",
      "name": "Omelette",
      "restaurant": "Bistro C"
    },
    {
      "image": "assets/img/breakfast1.png",
      "name": "French Toast",
      "restaurant": "Eatery D"
    },
    {
      "image": "assets/img/breakfast1.png",
      "name": "Bagel",
      "restaurant": "Bakery E"
    },
  ];

  @override
  void initState() {
    super.initState();
    _loadUserMealData(DateTime.now());
  }

  Future<void> _loadUserMealData(DateTime clickedDate) async {
    debugPrint('Calling user meal data for $clickedDate');
    final bigbumService = Bigbum.create();
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

        setState(() {
          this.userMealLogs = response.body!;
          isLoading = false;
        });
      }

      for (var meal in userMealLogs) {
        totalCalories += meal.calories ?? 0;
        totalProtein += meal.protein ?? 0;
        totalCarbs += meal.carbs ?? 0;
        totalFats += meal.fats ?? 0;
      }
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      debugPrint('❌ Single Meal Retrieval: $statusCode');
      debugPrint('Response data: ${e.response?.data}');
      setState(() {
        hasError = true;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.redAccent,
          ),
        ),
      );
    }
    final List<Map<String, dynamic>> macros = [
      {
        'title': 'Protein',
        'amount': totalProtein.toStringAsFixed(0),
        'totalAmount': '80',
        'icon': Icons.fitness_center,
        'color': Colors.white,
        'barColor2': const Color(0xFFC7B290),
        'barColor1': Colors.white,
      },
      {
        'title': 'Carbs',
        'amount': totalCarbs.toStringAsFixed(0),
        'totalAmount': '75',
        'icon': Icons.fastfood,
        'color': const Color(0xFFB28F5E),
        'barColor1': const Color(0xFFC7B290),
        'barColor2': const Color(0xFFB28F5E),
      },
      {
        'title': 'Fats',
        'amount': totalFats.toStringAsFixed(0),
        'totalAmount': '40',
        'icon': Icons.local_pizza,
        'color': const Color(0xFFC7B290),
        'barColor2': const Color(0xFFC49A2C),
        'barColor1': const Color(0xFFC7B290),
      },
    ];
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            top: MediaQuery.of(context).size.height * 0.025,
          ),
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
                    Text(
                      'Hi, ${widget.userName}',
                      style: const TextStyle(
                        color: Color(0xFFFE6C6C),
                        fontSize: 26,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.brown),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
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

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BodyScanMain(),
                        ),
                      );
                    },
                    child: const Text(
                      "It's time for a body scan!",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              LayoutBuilder(
                builder: (context, constraints) {
                  final double spacerWidth = constraints.maxWidth * 0.1;

                  return Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Circle widget
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            const SizedBox(
                              width: 120,
                              height: 120,
                              child: CircularProgressIndicator(
                                value: 1.0,
                                strokeWidth: 15,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.yellow),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: CircularProgressIndicator(
                                value: (totalCalories) / 2500,
                                strokeWidth: 13,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.redAccent),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            Text(
                              //TO-DO TO QUERY USER'S PERSONAL CALORIE AMOUNT
                              "${(totalCalories / 2500 * 100).toInt()}%",
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: spacerWidth),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Remaining Calories',
                              style: TextStyle(
                                color: Color(0xFFFE6C6C),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                            ),
                            Text(
                              //TO-DO TO QUERY USER'S PERSONAL CALORIE AMOUNT
                              '${(2500 - (totalCalories ?? 0)).toStringAsFixed(0)}kCal',
                              style: const TextStyle(
                                color: Color(0xFFFFD700),
                                fontSize: 40,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 25),

              Row(
                children: List.generate(macros.length * 2 - 1, (index) {
                  if (index.isOdd) return const SizedBox(width: 20);
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
                      progressPercent:
                          int.parse(macro['totalAmount'].toString()) != 0
                              ? int.parse(macro['amount'].toString()) /
                                  int.parse(macro['totalAmount'].toString())
                              : 0.0,
                    ),
                  );
                }),
              ),

              const SizedBox(
                height: 30,
              ),

              const SizedBox(
                height: 30,
              ),

              const Text(
                "Logged Meals",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: userMealLogs.map((meal) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: NutritionInfoCard(
                            mealId: meal.id,
                            mealType: meal.mealType ?? 'Unknown',
                            calories: (meal.calories ?? 0).toInt(),
                            protein: (meal.protein ?? 0).toInt(),
                            carbs: (meal.carbs ?? 0).toInt(),
                            fats: (meal.fats ?? 0).toInt(),
                            imageFile: (meal.mealImage!),
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              const Text(
                "Meal Ideas",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              GridView.builder(
                shrinkWrap:
                    true, // ✅ Prevents GridView from taking infinite height
                physics:
                    const NeverScrollableScrollPhysics(), // ✅ Avoids nested scrolling
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FoodScanMain(),
                        ),
                      );
                    },
                    child: FoodCard(
                      imagePath: foodItems[index]["image"]!,
                      foodName: foodItems[index]["name"]!,
                      restaurantName: foodItems[index]["restaurant"]!,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
