import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/widgets/macros_small_widget.dart';
import 'package:fluttertest/widgets/meal_idea_widget.dart';
import 'package:fluttertest/widgets/meal_type_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FoodLogPage extends StatefulWidget {
  const FoodLogPage({super.key});

  @override
  _FoodLogPageState createState() => _FoodLogPageState();
}

class _FoodLogPageState extends State<FoodLogPage> {
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
                        debugPrint("Onboarding page 3..");
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
                    const Text(
                      'Dinner',
                      style: TextStyle(
                        color: Color(0xFFFE6C6C),
                        fontSize: 22,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w600,
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

              const Center(
                child: Text(
                  'Food Logging',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: const Color(0xFF868686),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: SizedBox(
                  // ✅ Add this to provide a finite height
                  height: 700, // Set an appropriate height
                  child: Column(
                    children: [
                      const SizedBox(height: 15),

                      // Top Image
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 250, // ✅ Give it a fixed height
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/img/breakfast1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 338,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Container(
                              width: 234,
                              height: 294,
                              child: Stack(
                                children: [
                                  // Title
                                  Positioned(
                                    left: 20,
                                    top: 0,
                                    child: Text(
                                      'Egg Benedict',
                                      style: TextStyle(
                                        color: Color(0xFF260000),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  // Calories & Weight
                                  _positionedText(81, 73, '249kcal'),
                                  _positionedText(98, 132, '256g'),
                                  _positionedText(98, 195, '256g'),
                                  _positionedText(98, 256, '256g'),
                                  // Icons
                                  _positionedIcon(
                                      Icons.fitness_center, Colors.red, 0, 71),
                                  _positionedIcon(
                                      Icons.fitness_center, Colors.red, 0, 132),
                                  _positionedIcon(
                                      Icons.fastfood, Colors.blue, 0, 193),
                                  _positionedIcon(
                                      Icons.local_pizza, Colors.orange, 0, 254),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Positioned _positionedText(double left, double top, String text) {
  return Positioned(
    left: left,
    top: top,
    child: Text(
      text,
      style: TextStyle(
        color: Color(0xFF260000),
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Positioned _positionedIcon(
    IconData icon, Color color, double left, double top) {
  return Positioned(
    left: left,
    top: top,
    child: Icon(
      icon,
      size: 40, // Adjust size as needed
      color: color, // Customize icon color
    ),
  );
}
