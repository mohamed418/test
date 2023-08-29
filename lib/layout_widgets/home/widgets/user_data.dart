import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../constants/colors.dart';
import '../../../constants/components.dart';

Expanded buildCircleWidget(String text, String svg, context,) {
  return Expanded(
    child: SizedBox(
      height: screenHeight(context, .25),
      child: CircularPercentIndicator(
        radius: screenWidth(context, .13),
        lineWidth: 10,
        percent: 30 / 100,
        animation: true,
        animationDuration: 1300,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svg,
              width: screenWidth(context, .08),
            ),
            SizedBox(
              height: screenHeight(context, .007),
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: defaultColor,
              ),
            ),
          ],
        ),
        progressColor: defaultColor,
        backgroundColor: const Color.fromRGBO(209, 199, 245, 1),
      ),
    ),
  );
}


Padding buildUserData(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(padding(context)),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(244, 242, 253, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      height: screenHeight(context, .17),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCircleWidget(
              '3785',
              'assets/svg/steps.svg',
              context,
            ),
            SizedBox(
              width: screenWidth(context, .02),
            ),
            buildCircleWidget(
              '3785',
              'assets/svg/Vector.svg',
              context,
            ),
            SizedBox(
              width: screenWidth(context, .02),
            ),
            buildCircleWidget(
              '321',
              'assets/svg/fire.svg',
              context,
            ),
          ],
        ),
      ),
    ),
  );
}
