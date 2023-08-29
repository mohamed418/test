import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/bloc/cubit.dart';
import 'package:test/bloc/states.dart';
import 'package:test/constants/colors.dart';
import 'package:test/constants/components.dart';
import 'widgets/listview.dart';

class WalkingCompetitionScreen extends StatelessWidget {
  const WalkingCompetitionScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: padding(context)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: black,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Walking competition',
                        style: mainTextStyle(context, black),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      cubit.buildInkWell(context, 0, 'Day'),
                      cubit.buildInkWell(context, 1, 'Week'),
                      cubit.buildInkWell(context, 2, 'Month'),
                      cubit.buildInkWell(context, 3, 'Year'),
                    ],
                  ),
                ),
                const Expanded(
                  child: CustomListView(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/rankImage1.png',
      'assets/images/rankImage2.png',
      'assets/images/rankImage3.png',
      'assets/images/rankImage1.png',
      'assets/images/rankImage2.png',
      'assets/images/rankImage3.png',
      'assets/images/rankImage1.png',
      'assets/images/rankImage2.png',
      'assets/images/rankImage3.png',
      'assets/images/rankImage1.png',
      'assets/images/rankImage1.png',
    ];
    final List<String> names = [
      'Kristin Watson',
      'Jenny Wilson',
      'Jane Cooper',
      'Kristin Watson',
      'Jenny Wilson',
      'Jane Cooper',
      'Kristin Watson',
      'Jenny Wilson',
      'Jane Cooper',
      'Kristin Watson',
      'Kristin Watson',
    ];
    final List<String> rates = [
      '3387',
      '2561',
      '2129',
      '801',
      '715',
      '602',
      '501',
      '315',
      '102',
      '95',
      '801',
    ];
    return buildListView(imagePaths, names, rates);
  }
}
