import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/pages/FoodScan/foodscan2.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/image_uploader.dart';

class FoodScan1 extends StatefulWidget {
  const FoodScan1({super.key});

  @override
  _FoodScan1State createState() => _FoodScan1State();
}

class _FoodScan1State extends State<FoodScan1> {
  List<dynamic> data = [];
  bool isLoading = true;
  bool hasError = false;

  File? selectedImageFile;
  final mealTypeController = TextEditingController();
  final mealNameController = TextEditingController();
  final mealDescriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // fetchData();
  }

  @override
  void dispose() {
    mealTypeController.dispose();
    mealNameController.dispose();
    mealDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    const SizedBox(width: 20),
                    const Expanded(
                      // Forces "Dinner" to take up available space
                      child: Text(
                        'Dinner',
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

                      ImageUploader(
                        height: 250,
                        borderRadius: 15,
                        buttonText: 'Upload Food Image',
                        onImageSelected: (File? image) {
                          setState(() {
                            selectedImageFile = image;
                          });
                          if (image != null) {
                            debugPrint("Image selected: ${image.path}");
                            debugPrint(
                                "Image size: ${image.lengthSync()} bytes");
                          } else {
                            debugPrint("No image selected.");
                          }
                        },
                      ),

                      const SizedBox(height: 24),

                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20), // Side padding
                        child: Column(
                          children: [
                            // Meal Type field
                            TextField(
                              controller: mealTypeController,
                              decoration: InputDecoration(
                                labelText: 'Meal Type',
                                labelStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black), // Black border
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors
                                          .black), // Black border when enabled
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors
                                          .black), // Black border when focused
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                            ),

                            const SizedBox(height: 16),

                            // Meal Name field
                            TextField(
                              controller: mealNameController,
                              decoration: InputDecoration(
                                labelText: 'Meal Name',
                                labelStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                            ),

                            const SizedBox(height: 16),

                            // Meal Description field
                            TextField(
                              controller: mealDescriptionController,
                              decoration: InputDecoration(
                                labelText: 'Meal Description',
                                labelStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // AppButton1 Widget
                      AppButton1(
                        textColor: Colors.white,
                        backgroundColor: const Color(0xFFFE6C6C),
                        borderColor: const Color(0xFFFE6C6C),
                        borderRadius: 50,
                        text: "Meal Scan",
                        textSize: 20,
                        textWeight: FontWeight.w700,
                        height: 50,
                        width: 200,
                        onPressed: () {
                          if (selectedImageFile == null) {
                            debugPrint("No image selected, cannot proceed.");
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content:
                                      Text('Please select an image first')),
                            );
                            return;
                          }

                          // ✅ You can upload the image file here
                          debugPrint(
                              "Sending to backend: ${selectedImageFile!.path}");

                          // Proceed to next screen (for now)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FoodScan2()),
                          );
                        },
                      ),
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
