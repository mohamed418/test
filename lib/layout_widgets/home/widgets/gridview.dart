import 'package:flutter/material.dart';
import 'package:test/constants/colors.dart';
import 'package:test/constants/components.dart';

final List<String> imagePaths = [
  'assets/images/sliderImage1.png',
  'assets/images/sliderImage1.png',
  'assets/images/sliderImage1.png',
  'assets/images/sliderImage1.png',
  'assets/images/sliderImage1.png',
];

final List<String> imageLabels = [
  'When called hypertension',
  'When called hypertension2',
  'When called hypertension3',
  'When called hypertension4',
  'When called hypertension5',
];

SizedBox buildGridView(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  return SizedBox(
    height: screenHeight(context, .28),
    child: GridView.count(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      crossAxisCount: 1,
      mainAxisSpacing: 0,
      crossAxisSpacing: 0,
      childAspectRatio: 2 / 2,
      children: List.generate(
        5,
        (index) => buildItem(size, context,imagePaths[index], imageLabels[index]),
      ),
    ),
  );
}

Padding buildItem(Size size, context, String image,String label) {
  return Padding(
    padding: const EdgeInsets.only(left: 10,top: 10),
    child: GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              height: size.height * .2,
              width: size.width *.9,
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
          // SizedBox(width: size.height * .1),
          Padding(
            padding: EdgeInsets.only(top: size.height * .01),
            child: Text(
              maxLines:1,
              label,
              overflow: TextOverflow.ellipsis,
              style: mainTextStyle(context, white),
            ),
          ),
        ],
      ),
    ),
  );
}
