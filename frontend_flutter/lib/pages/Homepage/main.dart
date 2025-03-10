import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/widgets/macros_small_widget.dart';
import 'package:fluttertest/widgets/meal_type_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  List<dynamic> data = [];
  bool isLoading = true;
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    // fetchData();
  }

  // Future<void> fetchData() async {
  //   try {
  //     final response = await http
  //         .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  //     if (response.statusCode == 200) {
  //       setState(() {
  //         data = json.decode(response.body);
  //         isLoading = false;
  //       });
  //     } else {
  //       throw Exception("Failed to load data");
  //     }
  //   } catch (e) {
  //     setState(() {
  //       hasError = true;
  //       isLoading = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // Set background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom Header
            Container(
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
                      Icon(Icons.settings, size: 27, color: Color(0xFFFE6C6C)),
                    ],
                  ),
                ],
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

                SizedBox(
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

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MacrosSmallWidget(
                    title: "Protein",
                    amount: "400/400g",
                    icon: Icons.fitness_center,
                    color: Colors.red),
                Spacer(),
                MacrosSmallWidget(
                    title: "Carbs",
                    amount: "300/300g",
                    icon: Icons.fastfood,
                    color: Colors.blue),
                Spacer(),
                MacrosSmallWidget(
                    title: "Fats",
                    amount: "100/200g",
                    icon: Icons.local_pizza,
                    color: Colors.orange),
              ],
            ),

            SizedBox(
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

            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 120, // Set the height of the scrolling area
              child: ListView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
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

            SizedBox(
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

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900], // Background color of the container
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 2, // Border width
                ),
                borderRadius:
                    BorderRadius.circular(16), // Rounded corners at the top
              ),
              // Background color for the Column
              child: Column(
                children: [
                  // Image section
                  Container(
                    height: 138 * 0.6, // 60% of the container's height
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/img/breakfast1.png'), // Use AssetImage here
                        fit: BoxFit.cover, // Adjust the image fit
                      ),
                    ),
                  ),
                  // Title text
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Food Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFE6C6C),
                    ),
                  ),

                  // Subtitle text
                  const Text(
                    "Restaurant Name",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFE6C6C),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
