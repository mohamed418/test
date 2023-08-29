import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/components.dart';

Padding buildListOfItems(List<String> textItems, BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(padding(context)),
    child: Column(
      children: textItems.map((text) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight(context, .1),
              decoration: BoxDecoration(
                color: defaultColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style: mainTextStyle(context, white),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.local_fire_department_sharp,
                        size: 35,
                        color: white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight(context, .01),
            )
          ],
        );
      }).toList(),
    ),
  );
}
