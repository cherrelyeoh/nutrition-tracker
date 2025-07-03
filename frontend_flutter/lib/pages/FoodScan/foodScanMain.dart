// ignore_for_file: file_names, library_private_types_in_public_api

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/FoodScan/foodScanResults.dart';
import 'package:fluttertest/services/api/export.dart' hide UserMealInputDto;
import 'package:fluttertest/services/newapi/bigbum.swagger.dart';
import 'package:fluttertest/widgets/image_picker_widget.dart';
import 'dart:convert';

import 'Questions/questionDeck.dart';

class FoodScanMain extends StatefulWidget {
  final String? mealType;
  const FoodScanMain({super.key, this.mealType});

  @override
  _FoodScanMainState createState() => _FoodScanMainState();
}

class _FoodScanMainState extends State<FoodScanMain> {
  List<dynamic> data = [];
  bool isLoading = false;
  bool hasError = false;

  File? selectedImageFile;
  String? selectedMealType;
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
    selectedMealType = widget.mealType;
    if (selectedMealType != null) {
      mealTypeController.text = selectedMealType!;
    }
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
        userMealId: null,
        dateOfMeal: DateTime.now(),
        mealType: mealTypeController.text);

    final dio = Dio();

    debugPrint("UserId ${1}");
    debugPrint("MealImage $base64Image");
    debugPrint("MealName ${mealNameController.text}");

    final client = UserMealLogClient(dio, baseUrl: 'http://10.0.2.2:3000/');

    final bigbumService = Bigbum.create(
      baseUrl:
          Uri.parse('http://10.0.2.2:3000'), // Replace with your API base URL
    );

    // try {
    //   final response =
    //       await bigbumService.UserMealLogController_extractNutrientDetails(
    //           body: mealScanObject);
    //   // final mealLog = await client.userMealLogControllerExtractNutrientDetails(
    //   //     body: mealScanObject);
    //   final mealLog = response.body;
    //   debugPrint("Meal logged!");
    //   debugPrint("🔁 Response: $mealLog"); //
    //   // if (mealLog.responseType == "Question") {
    //   //   debugPrint('The Scanning returned a question');
    //   // } else {
    //   debugPrint('The Scanning logged a meal');
    //   if (!mounted) return;
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => FoodScanResults(
    //         mealLog: mealLog,
    //         mealImage: base64Image,
    //         mealName: mealNameController.text,
    //         mealDescription:
    //             mealLog['mainMeal']?['comments'] ?? 'No description available',
    //         mealId: mealScanObject.userMealId,
    //       ),
    //     ),
    //   );
    // } on DioException catch (e) {
    //   // Access status code from DioError
    //   final statusCode = e.response?.statusCode;
    //   debugPrint('❌ Food Scan Failed with: $statusCode');
    //   debugPrint('Response data: ${e.response?.data}');
    // }

    try {
      final response =
          await bigbumService.UserMealLogController_extractNutrientDetails(
        body: mealScanObject,
      );

      final mealLog = response.body;
      debugPrint("🔁 Response: $mealLog");

      final responseType = mealLog['ResponseType'];

      if (responseType == 'Question') {
        final rawList = mealLog['questionList'];
        final List<Map<String, dynamic>> questions =
            List<Map<String, dynamic>>.from(rawList);
        showQuestionDeckDialog(context, questions);
      } else {
        debugPrint('✅ Scanning logged a meal result');

        if (!mounted) return;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodScanResults(
              mealLog: mealLog,
              mealImage: base64Image,
              mealName: mealNameController.text,
              mealDescription: mealLog['mainMeal']?['comments'] ??
                  'No description available',
              mealId: mealScanObject.userMealId,
            ),
          ),
        );
      }
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      debugPrint('❌ Food Scan Failed with: $statusCode');
      debugPrint('Response data: ${e.response?.data}');
    }

    setState(() {
      isLoading = false;
    });
  }

  void showQuestionDeckDialog(
      BuildContext context, List<Map<String, dynamic>> questions) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => QuestionDeck(
        questions: questions,
        onCompleted: () {
          // Trigger mealScan again
          mealScan();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Food Logging',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final double containerWidth =
                        constraints.maxWidth * 0.5; // 90% of available width
                    final double containerHeight =
                        containerWidth * (402 / 321.6); // maintain aspect ratio

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        selectedImageFile == null
                            ? Container(
                                width: containerWidth,
                                height: containerHeight,
                                decoration: BoxDecoration(
                                  color: Colors.grey[500],
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/img/foodpic.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.file(
                                  selectedImageFile!,
                                  width: containerWidth,
                                  height: containerHeight,
                                  fit: BoxFit.cover,
                                ),
                              ),
                        const SizedBox(height: 16),
                        ImagePickerWidget(
                          showPreview: false,
                          onImageSelected: (File image) {
                            setState(() {
                              selectedImageFile = image;
                            });
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: const Color(0xFF868686),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20), // Side padding
                          child: Column(
                            children: [
                              const SizedBox(height: 25),
                              // Meal Type field
                              DropdownButtonFormField<String>(
                                value: selectedMealType,
                                items: [
                                  'Breakfast',
                                  'Lunch',
                                  'Dinner',
                                  'Snack',
                                  'Others',
                                ].map((type) {
                                  return DropdownMenuItem<String>(
                                    value: type,
                                    child: Text(
                                      type,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize:
                                            16, // Match TextField font size
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedMealType = value!;
                                    mealTypeController.text = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Meal Type',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize:
                                        16, // Match label style to TextField
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
                                    vertical:
                                        12, // Match TextField vertical padding
                                    horizontal: 16,
                                  ),
                                ),
                                dropdownColor: Colors.white,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16, // Match selected item font size
                                ),
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
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: isLoading ? null : mealScan,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                          "Scan Meal",
                          style: TextStyle(
                            color: Color(0xFFFE6C6C),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
