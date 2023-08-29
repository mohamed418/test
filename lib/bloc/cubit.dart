import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/bloc/states.dart';
import 'package:test/layout_widgets/articles_widget.dart';
import 'package:test/layout_widgets/home/home_widget.dart';
import 'package:test/layout_widgets/profile_widget.dart';
import '../constants/colors.dart';
import '../constants/components.dart';
import '../layout_widgets/search_widget.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> tabs = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: "Home page",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.lightbulb_outlined),
      label: 'Articles',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      label: "Profile",

    ),
  ];

  List<Widget> screens = [
    const HomeWidget(),
    const SearchWidget(),
    const ArticlesWidget(),
    const ProfileWidget(),
  ];

  void changeBot(index, context) {
    emit(ChangeBotNavState());
    currentIndex = index;
  }

  int selectedIndex = 0;
  Widget buildInkWell(BuildContext context, int index, String text) {
    final bool isSelected = selectedIndex == index;
    final Color inkWellColor = isSelected ? defaultColor : defaultColor.withOpacity(0.5);

    return InkWell(
      onTap: () {
        emit(ChangeContainerColorState());
        selectedIndex = index;
      },
      child: Container(
        decoration: BoxDecoration(
          color: inkWellColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(padding(context)),
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : defaultColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
