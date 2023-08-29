import 'package:flutter/material.dart';
import 'package:test/constants/colors.dart';
import 'package:test/constants/components.dart';

class ArticlesWidget extends StatelessWidget {
  const ArticlesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Articles',
              style: mainTextStyle(
                context,
                defaultColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
