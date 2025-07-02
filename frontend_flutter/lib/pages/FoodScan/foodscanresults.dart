// ignore_for_file: file_names
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/services/api/user_sub_meal_log/user_sub_meal_log_client.dart';
import 'package:fluttertest/services/newapi/bigbum.swagger.dart';
import 'package:fluttertest/widgets/meallog_mealcard.dart';

class MealLog {
  final String responseType;
  final MainMeal mainMeal;
  final List<SubMeal> subMealList;
  final num? mealId;

  MealLog(
      {required this.responseType,
      required this.mainMeal,
      required this.subMealList,
      this.mealId});

  factory MealLog.fromJson(Map<String, dynamic> json) {
    return MealLog(
      responseType: json['ResponseType'] as String? ?? 'NutrientResult',
      mainMeal:
          MainMeal.fromJson(json['mainMeal'] as Map<String, dynamic>? ?? {}),
      subMealList: (json['subMealList'] as List<dynamic>? ?? [])
          .map((subMeal) => SubMeal.fromJson(subMeal as Map<String, dynamic>))
          .toList(),
    );
  }
}

class MainMeal {
  final int id;
  final String mealImage;
  final String? mealType;
  final int weight;
  final int calories;
  final int protein;
  final int fats;
  final int carbs;
  final int mealLevel;
  final String? comments;

  MainMeal({
    required this.id,
    required this.mealImage,
    this.mealType,
    required this.weight,
    required this.calories,
    required this.protein,
    required this.fats,
    required this.carbs,
    required this.mealLevel,
    this.comments,
  });

  factory MainMeal.fromJson(Map<String, dynamic> json) {
    return MainMeal(
      id: json['id'] as int? ?? 0,
      mealImage: json['mealImage'] as String? ?? '',
      mealType: json['mealType'] as String? ?? 'Unknown Meal',
      calories: (json['calories'] as num?)?.toInt() ?? 0,
      protein: (json['protein'] as num?)?.toInt() ?? 0,
      fats: (json['fats'] as num?)?.toInt() ?? 0,
      carbs: (json['carbs'] as num?)?.toInt() ?? 0,
      weight: (json['weight'] as num?)?.toInt() ?? 0,
      mealLevel: json['mealLevel'] as int? ?? 0,
      comments: json['comments'] as String? ?? 'No Description Available',
    );
  }
}

class SubMeal {
  final int id;
  final String mealName;
  final int weight;
  final int calories;
  final int protein;
  final int fats;
  final int carbs;
  final dynamic mainMeal; // Kept as dynamic since it's null in response

  SubMeal({
    required this.id,
    required this.mealName,
    required this.weight,
    required this.calories,
    required this.protein,
    required this.fats,
    required this.carbs,
    required this.mainMeal,
  });

  factory SubMeal.fromJson(Map<String, dynamic> json) {
    return SubMeal(
      id: json['id'] as int? ?? 0,
      mealName: json['mealName'] as String? ?? 'Unknown Sub Meal',
      calories: (json['calories'] as num?)?.toInt() ?? 0,
      protein: (json['protein'] as num?)?.toInt() ?? 0,
      fats: (json['fats'] as num?)?.toInt() ?? 0,
      carbs: (json['carbs'] as num?)?.toInt() ?? 0,
      weight: (json['weight'] as num?)?.toInt() ?? 0,
      mainMeal: json['mainMeal'], // Preserve original value
    );
  }
}

// ignore: must_be_immutable
class FoodScanResults extends StatefulWidget {
  Map<String, dynamic>? mealLog;
  String? mealImage;
  String? mealName;
  String? mealDescription;
  final num? mealId;

  FoodScanResults({
    super.key,
    this.mealLog,
    this.mealImage,
    this.mealName,
    this.mealDescription,
    this.mealId,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FoodScanResultsState createState() => _FoodScanResultsState();
}

class _FoodScanResultsState extends State<FoodScanResults> {
  // List<Map<String, dynamic>> subMeals = [];
  bool isLoading = true;
  bool hasError = false;
  String? mealImage;
  String? mealName;
  String? mealDescription;
  num? mealId;

  final subMealHeaderIcons = [
    Icons.local_fire_department, // fire (calories)
    Icons.grain, // carbs
    Icons.local_pizza, // fats
    Icons.set_meal, // protein
  ];

  final subMealHeaderLabels = [
    'Calories',
    'Carbs',
    'Fats',
    'Protein',
  ];

  List<Map<String, dynamic>> subMeals = []; // Remove hardcoded values
  MainMeal mainMeal = MainMeal(
    id: 0,
    mealImage: '',
    mealType: '',
    weight: 0,
    calories: 0,
    protein: 0,
    fats: 0,
    carbs: 0,
    mealLevel: 0,
    comments: '',
  );

  @override
  void initState() {
    super.initState();
    mealImage = widget.mealImage;
    mealName = widget.mealName;
    mealDescription = widget.mealDescription;
    _loadMealData(); // Async function is called but not awaited
  }

  Future<void> _loadMealData() async {
    //This is for flow when user picks meal from meal_calendar page
    if (widget.mealLog == null) {
      // final client = UserMealLogClient(dio, baseUrl: 'http://10.0.2.2:3000/');
      final bigbumService = Bigbum.create(
        baseUrl:
            Uri.parse('http://10.0.2.2:3000'), // Replace with your API base URL
      );
      try {
        // hardcoded value - please remove once implementation is done
        final response = await bigbumService
            .getOneBaseUserMealLogControllerUserMealLogEntity(id: 4);
        if (response.isSuccessful && response.body != null) {
          final userMealLog = response.body!;

          debugPrint("Querying a single meal with id ${widget.mealId}!");
          debugPrint("🔁 Response: ${userMealLog.toJson()}");

          setState(() {
            mainMeal = MainMeal(
              id: userMealLog.id!.toInt(),
              mealImage: userMealLog.mealImage!,
              mealType: userMealLog.mealType!,
              weight: userMealLog.weight!.toInt(),
              calories: userMealLog.calories!.toInt(),
              protein: userMealLog.protein!.toInt(),
              fats: userMealLog.fats!.toInt(),
              carbs: userMealLog.carbs!.toInt(),
              mealLevel: userMealLog.mealLevel!.toInt(),
              comments: userMealLog.comments ?? '',
            );

            mealName = userMealLog.mealName;
            mealImage = userMealLog.mealImage;
            mealDescription = userMealLog.comments;
            mealId = widget.mealId;
          });
        }
        await _loadSubMeals(widget.mealId);
      } on DioException catch (e) {
        final statusCode = e.response?.statusCode;
        debugPrint('❌ Single Meal Retrieval: $statusCode');
        debugPrint('Response data: ${e.response?.data}');
      }
    } else {
      //This is for flow where user scans meal
      debugPrint('📦 mealLog received in FoodScanResults: ${widget.mealLog}');
      await _loadSubMeals(widget.mealId);
      try {
        debugPrint(
          '📦 Pretty mealLog JSON:\n${const JsonEncoder.withIndent('  ').convert(widget.mealLog)}',
        );
      } catch (e) {
        debugPrint('⚠️ Failed to encode mealLog as JSON: $e');
      }
    }
  }

  Future<void> _loadSubMeals(num? mealId) async {
    debugPrint('Load submeals called');
    final dio = Dio();
    try {
      // This is for for flow when user selects meal from calendar

      if (widget.mealLog == null) {
        final subMealClient =
            UserSubMealLogClient(dio, baseUrl: 'http://10.0.2.2:3000/');
        final subMealLogs = await subMealClient
            .userSubMealLogControllerGetByMainMealId(id: mealId!);

        debugPrint(
            "Querying a sub meals with from main meal id of ${widget.mealId}!");
        isLoading = false;
        debugPrint(
            "🔁 Response from submeallog call: ${jsonEncode(subMealLogs)}");

        setState(() {
          subMeals = subMealLogs.map((subMeal) {
            return {
              "name": subMeal.mealName,
              "values": [
                subMeal.calories.toString(),
                subMeal.carbs.toString(),
                subMeal.fats.toString(),
                subMeal.protein.toString(),
              ],
            };
          }).toList();
          isLoading = false;
        });
      } else {
        //This is for flow where user scans meal
        final parsedMealLog = MealLog.fromJson(widget.mealLog!);
        debugPrint('parsedMealLog.mainMeal: ${parsedMealLog.mainMeal}');
        debugPrint('parsedMealLog.subMealList: ${parsedMealLog.subMealList}');

        setState(() {
          subMeals = parsedMealLog.subMealList.map((subMeal) {
            debugPrint('subMeal: $subMeal');
            return {
              "name": subMeal.mealName,
              "values": [
                subMeal.calories.toString(),
                subMeal.carbs.toString(),
                subMeal.fats.toString(),
                subMeal.protein.toString(),
              ],
            };
          }).toList();
          mainMeal = parsedMealLog.mainMeal;
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        hasError = true;
        isLoading = false;
      });
      debugPrint("Error loading sub meals: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      // Meal card image and overlay
                      MealLogCard(
                        imageBase64: mealImage ?? 'assets/img/egg_benedict.jpg',
                        foodName: mealName ?? 'Unknown Meal',
                        description: (mealDescription?.trim().isEmpty ?? true)
                            ? 'No description available'
                            : mealDescription!,
                      ),

                      // Back button positioned over image
                      Positioned(
                        top: 40,
                        left: 16,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(
                                context); // Or push to MainHomePage if needed
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: const Icon(Icons.arrow_back,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 70), // Space after card

                  Center(
                    child: Container(
                      width: 338.01,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 317,
                          height: 96,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFE6C6C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 8,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Icon(
                                    Icons.fastfood, // or any icon you like
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 52,
                                top: 9,
                                child: Text(
                                  '${mainMeal.carbs}g carbs',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 1.35,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 218,
                                top: 8,
                                child: Text(
                                  '${mainMeal.protein}g protein',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.45,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 166,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFE6C6C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 174,
                                top: 8,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Icon(
                                    Icons.fitness_center,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 166,
                                top: 56,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFE6C6C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 174,
                                top: 64,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Icon(
                                    Icons.set_meal,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 218,
                                top: 64,
                                child: Text(
                                  '${mainMeal.fats}g fats',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 1.45,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 51,
                                top: 64,
                                child: Text(
                                  '${mainMeal.calories} Kcal',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 1.45,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 56,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFE6C6C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 64,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Icon(
                                    Icons.local_fire_department,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 338.01,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            constraints: const BoxConstraints(
                                maxWidth: 400), // Optional max width
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Meal Breakdown',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Colors.white, // or any other color
                                    decorationStyle: TextDecorationStyle.solid,
                                  ),
                                ),

                                const SizedBox(height: 25),

                                // Header Row - Left Aligned
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisSize: MainAxisSize
                                        .min, // Shrink to fit children
                                    mainAxisAlignment: MainAxisAlignment
                                        .center, // Center contents
                                    children: [
                                      // Placeholder for meal name column
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      ...List.generate(
                                          subMealHeaderIcons.length, (index) {
                                        final icon = subMealHeaderIcons[index];
                                        final label =
                                            subMealHeaderLabels[index];

                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Tooltip(
                                            message: label,
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child:
                                                  Icon(icon, color: Colors.red),
                                            ),
                                          ),
                                        );
                                      }),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 12),

                                // Meal Rows - Center Aligned
                                ...subMeals.map((subMeal) => Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            // Meal Name
                                            Container(
                                              width: 100,
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  subMeal["name"] as String,
                                                  style: const TextStyle(
                                                      color: Colors.black),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: false,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),

                                            // Values
                                            ...(subMeal["values"]
                                                    as List<String>)
                                                .map(
                                              (value) => Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: Container(
                                                  width: 40,
                                                  height: 40,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Text(
                                                    value,
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Custom Header
                ],
              ),
            ),
    );
  }
}

class MacroStatItem extends StatelessWidget {
  final String label;
  final Widget icon;
  final Color boxColor;

  const MacroStatItem({
    super.key,
    required this.label,
    required this.icon,
    this.boxColor = const Color(0xFFFE6C6C),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            color: boxColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Center(child: icon),
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Sofia Pro',
            fontWeight: FontWeight.w400,
            height: 1.35,
          ),
        ),
      ],
    );
  }
}

class MacroStatsWidget extends StatelessWidget {
  final String carbs;
  final String proteins;
  final String fats;
  final String calories;
  final Color boxColor;

  const MacroStatsWidget({
    super.key,
    required this.carbs,
    required this.proteins,
    required this.fats,
    required this.calories,
    this.boxColor = const Color(0xFFFE6C6C),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 317,
      height: 96,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Top Row (Carbs & Proteins)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MacroStatItem(
                label: carbs,
                icon: const Icon(Icons.bakery_dining,
                    color: Colors.white, size: 24),
                boxColor: boxColor,
              ),
              MacroStatItem(
                label: proteins,
                icon: const Icon(Icons.fitness_center,
                    color: Colors.white, size: 24),
                boxColor: boxColor,
              ),
            ],
          ),
          // Bottom Row (Calories & Fats)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MacroStatItem(
                label: calories,
                icon: const Icon(Icons.local_fire_department,
                    color: Colors.white, size: 24),
                boxColor: boxColor,
              ),
              MacroStatItem(
                label: fats,
                icon: const Icon(Icons.opacity, color: Colors.white, size: 24),
                boxColor: boxColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
