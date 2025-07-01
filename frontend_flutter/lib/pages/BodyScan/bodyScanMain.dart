import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/services/api/export.dart';
import 'package:fluttertest/widgets/image_picker_widget.dart';
import 'dart:convert';

class BodyScanMain extends StatefulWidget {
  const BodyScanMain({super.key});

  @override
  _BodyScanMainState createState() => _BodyScanMainState();
}

class _BodyScanMainState extends State<BodyScanMain> {
  List<dynamic> data = [];
  bool isLoading = false;
  bool hasError = false;

  File? selectedImage1;
  File? selectedImage2;
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

  Future<void> bodyScan() async {
    debugPrint('Body Scan called');
    setState(() {
      isLoading = true;
    });

    String? base64Image;
    String? convertedImage1;
    String? convertedImage2;

    if (selectedImage1 != null && selectedImage2 != null) {
      convertedImage1 = await _convertImageToBase64(selectedImage1!);
      convertedImage2 = await _convertImageToBase64(selectedImage2!);
    } else {
      debugPrint("No image selected.");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Please make sure both images are uploaded')),
      );
      setState(() {
        isLoading = false;
      });
      return;
    }

    final bodyScanObject = ExtractBiodataInputDto(
      userId: 1,
      bodyImageFront: convertedImage1,
      bodyImageSide: convertedImage2,
      height: 170,
      weight: 60,
      age: 30,
      goal: 1,
      physicalActivity: 1,
    );

    final dio = Dio();

    debugPrint("UserId ${1}");
    debugPrint("MealImage $base64Image");
    debugPrint("MealName ${mealNameController.text}");

    final client = UserBiodataClient(dio, baseUrl: 'http://10.0.2.2:3000/');

    try {
      final bodyScanResult = await client
          .userBiodataControllerExtractUserBiodata(body: bodyScanObject);
      debugPrint("Meal logged!");
      // debugPrint(jsonEncode(bodyScanResult));
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      debugPrint('❌ Body Scan Failed with: $statusCode');
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                        debugPrint("Going back to home page...");
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

              const SizedBox(height: 30),

              const Text(
                "Body Scan Analaysis",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              // Description
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Scan your body or upload a photo to estimate body metrics like body fat, BMI, and more.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              selectedImage1 == null
                  ? Container(
                      width: 321.6,
                      height: 402,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/bodyscan1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(
                        selectedImage1!,
                        width: 321.6,
                        height: 402,
                        fit: BoxFit.cover,
                      ),
                    ),

              ImagePickerWidget(
                showPreview: false,
                onImageSelected: (File image) {
                  setState(() {
                    selectedImage1 = image;
                  });
                },
              ),

              const SizedBox(height: 35),

              selectedImage2 == null
                  ? Container(
                      width: 321.6,
                      height: 402,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/bodyscan2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(
                        selectedImage2!,
                        width: 321.6,
                        height: 402,
                        fit: BoxFit.cover,
                      ),
                    ),

              ImagePickerWidget(
                showPreview: false,
                onImageSelected: (File image) {
                  setState(() {
                    selectedImage2 = image;
                  });
                },
              ),

              const SizedBox(height: 35),

              ElevatedButton(
                onPressed: isLoading ? null : bodyScan,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[850],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text(
                        "Body Scan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
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
