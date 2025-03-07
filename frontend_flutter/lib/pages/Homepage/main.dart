import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/pages/Login/login.dart';
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

            const SizedBox(height: 5),

            const SizedBox(
              width: 209,
              child: Text(
                'It’s time to log your your meal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'League Spartan',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNutritionCard(
                    "Protein", "400/400g", Icons.fitness_center, Colors.red),
                const Spacer(),
                _buildNutritionCard(
                    "Carbs", "300/400g", Icons.fastfood, Colors.blue),
                const Spacer(),
                _buildNutritionCard(
                    "Fats", "200/400g", Icons.local_pizza, Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNutritionCard(
    String title, String amount, IconData icon, Color color) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(
      children: [
        Icon(icon, size: 27, color: color),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700)),
            Text(amount,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ],
    ),
    SizedBox(height: 4),
    Stack(
      children: [
        Container(
          width: 100,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          left: 25,
          top: 1,
          child: Container(
            width: 74,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    ),
  ]);
}
