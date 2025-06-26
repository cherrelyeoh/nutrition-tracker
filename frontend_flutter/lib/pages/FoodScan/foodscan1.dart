import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/pages/FoodScan/foodscanresults.dart';
import 'package:fluttertest/pages/FoodScan/foodscan2.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/services/api/authentication/authentication_client.dart';
import 'package:fluttertest/services/api/export.dart';
import 'package:fluttertest/services/api/models/object1.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/image_picker_widget.dart';
import 'dart:convert';

class FoodScan1 extends StatefulWidget {
  const FoodScan1({super.key});

  @override
  _FoodScan1State createState() => _FoodScan1State();
}

class _FoodScan1State extends State<FoodScan1> {
  List<dynamic> data = [];
  bool isLoading = false;
  bool hasError = false;

  File? selectedImageFile;
  final mealTypeController = TextEditingController();
  final mealNameController = TextEditingController();
  final mealDescriptionController = TextEditingController();

  Future<String> _convertImageToBase64(File imageFile) async {
    final bytes = await imageFile.readAsBytes();
    return base64Encode(bytes);
  }

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

  Future<void> mealScan() async {
    debugPrint('Meal Scan called');
    setState(() {
      isLoading = true;
    });

    String? base64Image;
    if (selectedImageFile != null) {
      base64Image = await _convertImageToBase64(selectedImageFile!);
    } else {
      debugPrint("No image selected.");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an image first')),
      );
      setState(() {
        isLoading = false;
      });
      return;
    }

    final mealScanObject = UserMealInputDto(
        userId: 1,
        mealImage: base64Image,
        mealName: mealNameController.text,
        userMealId: 123,
        dateOfMeal: DateTime.now());

    final dio = Dio();

    debugPrint("UserId ${1}");
    debugPrint("MealImage $base64Image");
    debugPrint("MealName ${mealNameController.text}");

    final client = UserMealLogClient(dio, baseUrl: 'http://10.0.2.2:3000/');

    try {
      final mealLog = await client.userMealLogControllerExtractNutrientDetails(
          body: mealScanObject);
      debugPrint("Meal logged!");
      debugPrint(jsonEncode(mealLog)); //

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodScanResults(
              mealLog: mealLog,
              mealImage: base64Image,
              mealName: mealNameController.text,
              mealDescription: mealDescriptionController.text),
        ),
      );
    } on DioException catch (e) {
      // Access status code from DioError
      final statusCode = e.response?.statusCode;
      debugPrint('❌ Food Scan Failed with: $statusCode');
      debugPrint('Response data: ${e.response?.data}');
    }

    setState(() {
      isLoading = false;
    });
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 15),

                        ImagePickerWidget(
                          onImageSelected: (File image) {
                            setState(() {
                              selectedImageFile = image;
                            });
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
                                decoration: const InputDecoration(
                                  labelText: 'Meal Type',
                                  labelStyle: TextStyle(
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
                                  contentPadding: EdgeInsets.symmetric(
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
                                decoration: const InputDecoration(
                                  labelText: 'Meal Name',
                                  labelStyle: TextStyle(
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
                                  contentPadding: EdgeInsets.symmetric(
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
                                decoration: const InputDecoration(
                                  labelText: 'Meal Description',
                                  labelStyle: TextStyle(
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
                                  contentPadding: EdgeInsets.symmetric(
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

                        ElevatedButton(
                          onPressed: isLoading ? null : mealScan,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[850],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: isLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.white)
                              : const Text(
                                  "Scan Meal",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                        ),

                        const SizedBox(height: 20),

                        // // AppButton1 Widget
                        // AppButton1(
                        //   textColor: Colors.white,
                        //   backgroundColor: const Color(0xFFFE6C6C),
                        //   borderColor: const Color(0xFFFE6C6C),
                        //   borderRadius: 50,
                        //   text: "Meal Scan",
                        //   textSize: 20,
                        //   textWeight: FontWeight.w700,
                        //   height: 50,
                        //   width: 200,
                        //   onPressed: () {
                        //     if (selectedImageFile == null) {
                        //       debugPrint("No image selected, cannot proceed.");
                        //       ScaffoldMessenger.of(context).showSnackBar(
                        //         const SnackBar(
                        //             content:
                        //                 Text('Please select an image first')),
                        //       );
                        //       return;
                        //     }

                        //     // ✅ You can upload the image file here
                        //     debugPrint(
                        //         "Sending to backend: ${selectedImageFile!.path}");

                        //     // Proceed to next screen (for now)
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => const FoodScan2()),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
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
