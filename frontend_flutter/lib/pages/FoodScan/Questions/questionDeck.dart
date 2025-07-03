import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:fluttertest/services/newapi/bigbum.swagger.dart';

import 'questionCard.dart';

class QuestionDeck extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  final VoidCallback? onCompleted;

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

  final bigbumService = Bigbum.create();
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
      debugPrint("✅ Bulk update success: ${response.body}");
      widget.onCompleted?.call();
    } catch (e) {
      debugPrint("❌ Bulk update failed: $e");
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
