import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test/constants/colors.dart';
import 'package:test/layout_widgets/home/widgets/gridview.dart';
import 'package:test/layout_widgets/home/widgets/user_data.dart';
import '../../bloc/cubit.dart';
import '../../bloc/states.dart';
import '../../constants/components.dart';
import 'widgets/elevated_button.dart';
import 'widgets/list_of_items.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> textItems = [
      "Articles",
      "Consultation",
      "Courses",
      "Webinars",
      "Books",
      "Medicine",
      "Food",
    ];

    return Scaffold(
      body: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: backGroundColor, // Replace with your desired color
          ));

          return SingleChildScrollView(
            child: Container(
              color: backGroundColor,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:padding(context)),
                    child: Row(
                      children: [
                        Text(
                          'Hello Dr. Turatbekov',
                          style: mainTextStyle(context, white),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            MdiIcons.bellRing,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildUserData(context),
                  buildElevatedButton(context),
                  Padding(
                    padding: EdgeInsets.all(padding(context)),
                    child: Row(
                      children: [
                        Text(
                          'Articles',
                          style: mainTextStyle(context, white),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            // in the logic part
                          },
                          child: Row(
                            children: [
                              Text(
                                'Show more',
                                style: minTextStyle(context, white),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildGridView(context),
                  buildListOfItems(textItems, context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
