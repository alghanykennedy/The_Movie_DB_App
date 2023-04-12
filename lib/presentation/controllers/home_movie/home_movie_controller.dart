// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/core/base/index.dart';
import '../../../domain/core/theme/index.dart';
import '../../widgets/tabs/index.dart';

class HomeMovieController extends BaseController<dynamic> {
  HomeMovieController();

  final RxInt currentIndex = 0.obs;

  final List<Widget> tabs = const <Widget>[
    NowPlayingMoviesTab(),
    PopularMoviesTab(),
    TopRatedMoviesTab(),
    UpcomingMoviesTab(),
    ProfilePage()
  ];

  void changeBrightness() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    WidgetsBinding.instance.performReassemble();
  }

  void openEndDrawer(GlobalKey<ScaffoldState> _scaffoldKey) {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Color getMyColor(int bottomBarIndex, int itemIndex) {
    Color color = Colors.white;
    if (bottomBarIndex != itemIndex) {
      if (Get.theme == Style.lightTheme) {
        color = Colors.black;
      } else {
        color = Colors.white;
      }
    }
    return color;
  }
}
