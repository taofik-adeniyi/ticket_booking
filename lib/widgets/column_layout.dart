import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../utils/applayout.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: Styles.headlineStyle3.copyWith(color: Colors.black)),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: Styles.headlineStyle4),
      ],
    );
  }
}
