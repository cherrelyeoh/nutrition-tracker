import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  final String question;
  final List<dynamic> options;
  final Function(String) onSelected;

  const QuestionCard({
    super.key,
    required this.question,
    required this.options,
    required this.onSelected,
  });

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 6,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Text(
                widget.question,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ...widget.options.map((opt) => RadioListTile<String>(
                    value: opt,
                    groupValue: selected,
                    title: Text(opt),
                    onChanged: (val) {
                      setState(() => selected = val);
                    },
                  )),
              const Spacer(),
              ElevatedButton(
                onPressed: selected == null
                    ? null
                    : () => widget.onSelected(selected!),
                child: const Text("Submit & Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
