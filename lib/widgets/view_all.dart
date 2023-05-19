import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ViewAll extends StatelessWidget {
  final String bigText;
  final String smallText;
  const ViewAll({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(bigText, style: Styles.headlineStyle2),
      InkWell(
          onTap: () {
            print('ink well tapped');
          },
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
    ]);
  }
}
