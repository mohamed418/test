import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/components.dart';

ListView buildListView(
    List<String> imagePaths, List<String> names, List<String> rates) {
  return ListView.builder(
    itemCount: 11, // Adjust the number of items as needed
    itemBuilder: (BuildContext context, int index) {
      Color itemColor = index < 3
          ? _getDifferentColor(index)
          : index == 10
              ? const Color.fromRGBO(154, 205, 80, 1)
              : Colors.grey.withOpacity(.4);
      Widget itemImage =
          index < 3 ? _getDifferentImage(index) : const SizedBox();

      return Padding(
        padding: const EdgeInsets.all(8.0), // Add padding for spacing
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Add a radius
          ),
          elevation: 3.0, // Add elevation for a card-like effect
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: itemColor,
                ),
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      index == 10 ? '4' : '${index + 1}',
                      style: GoogleFonts.montserrat(
                        fontSize: 50,
                        color: index == 10
                            ? white
                            : index > 2
                                ? defaultColor
                                : white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth(context, .03)),
                      child: Image(
                        image: AssetImage(
                          imagePaths[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth(context, .2),
                      child: Text(
                        names[index],
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: index == 10
                              ? white
                              : index > 2
                                  ? black
                                  : white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth(context, .03)),
                      child: Image(
                        image: AssetImage(
                          index == 10
                              ? 'assets/images/foot.png'
                              : index > 2
                                  ? 'assets/images/foot2.png'
                                  : 'assets/images/foot.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        rates[index],
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: index == 10
                              ? white
                              : index > 2
                                  ? defaultColor
                                  : white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              itemImage,
            ],
          ),
        ),
      );
    },
  );
}

Color _getDifferentColor(int index) {
  List<Color> colors = [
    const Color.fromRGBO(125, 17, 223, 1),
    const Color.fromRGBO(150, 51, 240, 1),
    const Color.fromRGBO(173, 97, 243, 1),
  ];
  return colors[index];
}

Widget _getDifferentImage(int index) {
  List<String> imagePaths = [
    'assets/images/Intersect0.png',
    'assets/images/Intersect1.png',
    'assets/images/Intersect2.png',
  ];

  return Positioned(
    top: 0,
    left: 0,
    child: Image.asset(
      imagePaths[index],
      width: 39,
      height: 27,
    ),
  );
}
