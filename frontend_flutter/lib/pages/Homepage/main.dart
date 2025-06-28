import 'package:flutter/material.dart';
import 'package:fluttertest/pages/BodyScan/bodyScanMain.dart';
import 'package:fluttertest/pages/FoodScan/foodscan1.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/pages/MealCalendar/mealCalendarMain.dart';
import 'package:fluttertest/widgets/macros_small_widget.dart';
import 'package:fluttertest/widgets/meal_idea_widget.dart';
import 'package:fluttertest/widgets/meal_type_widget.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  List<dynamic> data = [];
  bool isLoading = true;
  bool hasError = false;

  final List<Map<String, dynamic>> macros = [
    {
      'title': 'Protein',
      'amount': '400/400g',
      'icon': Icons.fitness_center,
      'color': Colors.red,
    },
    {
      'title': 'Carbs',
      'amount': '300/300g',
      'icon': Icons.fastfood,
      'color': Colors.blue,
    },
    {
      'title': 'Fats',
      'amount': '100/200g',
      'icon': Icons.local_pizza,
      'color': Colors.orange,
    },
  ];

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
    // fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // Set background color
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      // ),
      body: SafeArea(
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
                      const Text(
                        'Hi, Cherrel',
                        style: TextStyle(
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

                const SizedBox(height: 10), // Space before the new text

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FoodScan1(),
                      ),
                    );
                  },
                  child: const Text(
                    "It's time to log your meal!",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),

                const SizedBox(height: 5),

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

                const SizedBox(height: 30),

                Row(
                  children: [
                    //Circle Widget
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        // Background circle (red)
                        const SizedBox(
                          width: 120,
                          height: 120,
                          child: CircularProgressIndicator(
                            value: 1.0, // Full circle
                            strokeWidth: 10,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.redAccent),
                            backgroundColor: Colors.transparent,
                          ),
                        ),

                        // Foreground progress arc (yellow)
                        const SizedBox(
                          width: 120,
                          height: 120,
                          child: CircularProgressIndicator(
                            value: 0.75, // 75% progress
                            strokeWidth: 10,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.yellow),
                            backgroundColor: Colors.transparent,
                          ),
                        ),

                        // Percentage Text
                        Text(
                          "${(0.75 * 100).toInt()}%",
                          style: const TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Remaining Calories',
                            style: TextStyle(
                              color: Color(0xFFFE6C6C),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '2452kal',
                            style: TextStyle(
                              color: Color(0xFFFFD700),
                              fontSize: 44,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  children: List.generate(macros.length * 2 - 1, (index) {
                    if (index.isOdd) return const SizedBox(width: 8);
                    final i = index ~/ 2;
                    final macro = macros[i];
                    return Expanded(
                      child: MacrosSmallWidget(
                        title: macro['title'],
                        amount: macro['amount'],
                        icon: macro['icon'],
                        color: macro['color'],
                      ),
                    );
                  }),
                ),

                const SizedBox(
                  height: 30,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MealCalendarMain(),
                      ),
                    );
                  },
                  child: const Text(
                    "Check my calendar",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.start,
                  ),
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
                  height: 120, // Set the height of the scrolling area
                  child: ListView(
                    scrollDirection:
                        Axis.horizontal, // Enable horizontal scrolling
                    children: const [
                      // First card
                      SizedBox(
                        width: 300,
                        child: NutritionInfoCard(
                          mealType: 'Breakfast',
                          calories: 200,
                          protein: 56,
                          carbs: 100,
                          fats: 50,
                          imagePath: 'assets/img/breakfast1.png',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: NutritionInfoCard(
                          mealType: 'Lunch',
                          calories: 600,
                          protein: 20,
                          carbs: 800,
                          fats: 99,
                          imagePath: 'assets/img/lunch1.png',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: NutritionInfoCard(
                          mealType: 'Dinner',
                          calories: 100,
                          protein: 555,
                          carbs: 9999,
                          fats: 1234,
                          imagePath: 'assets/img/dinner1.png',
                        ),
                      ),
                    ],
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
                            builder: (context) => const FoodScan1(),
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
      ),
    );
  }
}
