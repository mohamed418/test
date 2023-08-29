import 'package:flutter/material.dart';
import 'package:test/constants/colors.dart';
import 'package:test/constants/components.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Search',
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
