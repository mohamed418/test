import 'package:flutter/material.dart';
import 'package:test/constants/transitions.dart';
import 'package:test/layout_widgets/home/screens/walking_competition_screen.dart';

import '../../../constants/colors.dart';
import '../../../constants/components.dart';

Padding buildElevatedButton(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(padding(context)),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          CustomPageRoute(
            child: const WalkingCompetitionScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: defaultColor,
        minimumSize: const Size(double.infinity, 58),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
      ),
      child: Text(
        "Walking competition",
        style: mainTextStyle(context, white),
      ),
    ),
  );
}
