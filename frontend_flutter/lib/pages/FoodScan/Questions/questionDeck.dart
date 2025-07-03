import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:fluttertest/services/newapi/bigbum.swagger.dart';

import 'questionCard.dart';

class QuestionDeck extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  final void Function(double mealId)? onCompleted;

  const QuestionDeck({
    super.key,
    required this.questions,
    this.onCompleted,
  });

  @override
  State<QuestionDeck> createState() => _QuestionDeckState();
}

class _QuestionDeckState extends State<QuestionDeck> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  Map<int, String> selectedAnswers = {};

  final bigbumService = Bigbum.create(
    baseUrl:
        Uri.parse('http://10.0.2.2:3000'), // Replace with your API base URL
  );
  void handleAnswer(String answer) async {
    final currentQuestion = widget.questions[currentIndex];
    final questionId = currentQuestion['id'];
    selectedAnswers[questionId] = answer;

    if (currentIndex < widget.questions.length - 1) {
      setState(() => currentIndex++);
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).pop();
      _submitAnswers();
    }
  }

  void _submitAnswers() async {
    debugPrint("✅ All answers:");
    debugPrint(selectedAnswers.toString());

    final List<UpdateUserMealQuestionDto> payload =
        selectedAnswers.entries.map((entry) {
      final questionData =
          widget.questions.firstWhere((q) => q['id'] == entry.key);

      return UpdateUserMealQuestionDto(
        id: entry.key.toDouble(), // If your DTO expects double
        answer: entry.value,
        question: questionData['question'] as String?,
        options: (questionData['options'] as List<dynamic>).cast<String>(),
      );
    }).toList();

    try {
      final response =
          await bigbumService.UserMealQuestionsController_bulkUpdate(
        body: payload,
      );

      debugPrint("📦 Response status: ${response.statusCode}");
      debugPrint("📦 Response error: ${response.error}");

      final List<UserMealQuestionsEntity>? questions = response.body;

      if (questions != null && questions.isNotEmpty) {
        debugPrint("📋 Total Questions Returned: ${questions.length}");

        for (var q in questions) {
          debugPrint("🔸 Question ID: ${q.id}");
          debugPrint("🔸 Question: ${q.question}");
          debugPrint("🔸 Answer: ${q.answer}");
          debugPrint("🔸 Options: ${q.options}");
          debugPrint("🔸 UserMealLog ID: ${q.userMealLog.id}");
        }

        final mealId = questions.first.userMealLog?.id?.toDouble() ?? 0.0;
        debugPrint("✅ Extracted mealId: $mealId");

        widget.onCompleted?.call(mealId);
      } else {
        debugPrint("⚠️ Response body is empty or null.");
      }
    } catch (e, stacktrace) {
      debugPrint("❌ Bulk update failed: $e");
      debugPrint("🪵 Stacktrace: $stacktrace");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.questions.length,
        itemBuilder: (context, index) {
          final question = widget.questions[index];
          return QuestionCard(
            question: question['question'],
            options: question['options'],
            onSelected: handleAnswer,
          );
        },
      ),
    );
  }
}
