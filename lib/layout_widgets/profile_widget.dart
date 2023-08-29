import 'package:flutter/material.dart';
import 'package:test/constants/colors.dart';
import 'package:test/constants/components.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile',
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
