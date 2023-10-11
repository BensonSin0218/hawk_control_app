import 'package:flutter/material.dart';

class IntroductionContainer extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String? description;
  final Image? image;

  const IntroductionContainer(
      {super.key,
      required this.title,
      this.backgroundColor = Colors.white,
      this.description,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          if (description != null) Text(description!)
        ],
      ),
    );
  }
}
