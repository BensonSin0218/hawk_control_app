import 'package:flutter/material.dart';

class IntroductionContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color? backgroundColor;
  final Image? image;

  const IntroductionContainer(
      {super.key,
      required this.title,
      required this.description,
      this.backgroundColor,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          Text(description, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
