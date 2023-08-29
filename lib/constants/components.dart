// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double screenWidth(BuildContext context, double value) {
  return MediaQuery.of(context).size.width * value;
}

double screenHeight(BuildContext context, double value) {
  return MediaQuery.of(context).size.height * value;
}

double padding(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.04;
}

TextStyle minTextStyle(BuildContext context, color) {
  return GoogleFonts.montserrat(
    fontSize: screenHeight(context, .017),
    fontWeight: FontWeight.w200,
    color: color,
    // overflow: TextOverflow.ellipsis,
  );
}

TextStyle mainTextStyle(BuildContext context, color) {
  return GoogleFonts.montserrat(
    fontSize: screenHeight(context, .021),
    fontWeight: FontWeight.w300,
    color: color,
    // overflow: TextOverflow.ellipsis,
  );
}

ShaderMask iconSh(icon, {double? size}) => ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect bounds) => const LinearGradient(
        colors: <Color>[
          Color.fromRGBO(60, 31, 168, 1),
          Color.fromRGBO(212, 206, 238, 1.0),
        ],
      ).createShader(bounds),
      child: Icon(
        icon,
        size: size,
      ),
    );

buildSnackBar(String? message, context, duration) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message!,
      ),
      duration: Duration(seconds: duration),
    ),
  );
}

void navigateTo(Widget, context) => Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, _) {
          return FadeTransition(
            opacity: animation,
            child: Widget,
          );
        },
      ),
    );

void navigateAndFinish(Widget, context) => Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, _) {
          return FadeTransition(
            opacity: animation,
            child: Widget,
          );
        },
      ),
      (route) => false,
    );

void printFullText(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
