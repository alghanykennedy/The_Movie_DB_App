import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../domain/core/theme/index.dart';
import '../../../domain/core/utils/index.dart';
import '../../controllers/home_movie/index.dart';

class HomeMoviePage extends GetView<HomeMovieController> {
  const HomeMoviePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        // appBar: const CustomAppBar(),
        body: controller.tabs[controller.currentIndex.value],
        bottomNavigationBar: ConvexAppBar(
          color: Colors.grey,
          backgroundColor: lightAccentColor,
          style: TabStyle.textIn,
          onTap: (int index) => controller.currentIndex.value != index
              ? controller.currentIndex.value = index
              : null,
          initialActiveIndex: controller.currentIndex.value,
          items: <TabItem<SvgPicture>>[
            TabItem<SvgPicture>(
              title: 'movies.now_playing.icon'.tr,
              icon: ThemeIcons(
                      color: controller.getMyColor(
                          controller.currentIndex.value, 0))
                  .nowPlayingMovie,
            ),
            TabItem<SvgPicture>(
              title: 'movies.popular.icon'.tr,
              icon: ThemeIcons(
                      color: controller.getMyColor(
                          controller.currentIndex.value, 1))
                  .popularMovie,
            ),
            TabItem<SvgPicture>(
              title: 'movies.top_rated.icon'.tr,
              icon: ThemeIcons(
                      color: controller.getMyColor(
                          controller.currentIndex.value, 2))
                  .topRatedMovie,
            ),
            TabItem<SvgPicture>(
              title: 'movies.upcoming.icon'.tr,
              icon: ThemeIcons(
                      color: controller.getMyColor(
                          controller.currentIndex.value, 3))
                  .upcomingMovie,
            ),
            TabItem<SvgPicture>(
              title: 'movies.profile.icon'.tr,
              icon: ThemeIcons(
                      color: controller.getMyColor(
                          controller.currentIndex.value, 4))
                  .profile,
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationRow extends GetView<HomeMovieController> {
  const NavigationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            child: Text(
              'movies.now_playing.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 0
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 0
                ? controller.currentIndex.value = 0
                : null,
          ),
          InkWell(
            child: Text(
              'movies.popular.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 1
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 1
                ? controller.currentIndex.value = 1
                : null,
          ),
          InkWell(
            child: Text(
              'movies.top_rated.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 2
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 2
                ? controller.currentIndex.value = 2
                : null,
          ),
          InkWell(
            child: Text(
              'movies.upcoming.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 3
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 3
                ? controller.currentIndex.value = 3
                : null,
          ),
          InkWell(
            child: Text(
              'movies.profile.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 4
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 4
                ? controller.currentIndex.value = 4
                : null,
          ),
        ],
      ),
    );
  }
}

class NavigationColumn extends GetView<HomeMovieController> {
  const NavigationColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            child: Text(
              'movies.now_playing.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 0
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 0
                ? controller.currentIndex.value = 0
                : null,
          ),
          InkWell(
            child: Text(
              'movies.popular.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 1
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 1
                ? controller.currentIndex.value = 1
                : null,
          ),
          InkWell(
            child: Text(
              'movies.top_rated.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 2
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 2
                ? controller.currentIndex.value = 2
                : null,
          ),
          InkWell(
            child: Text(
              'movies.profile.icon'.tr,
              style: TextStyle(
                fontSize: 16,
                color: controller.currentIndex.value != 3
                    ? Colors.white
                    : Colors.orange,
              ),
            ),
            onTap: () => controller.currentIndex.value != 3
                ? controller.currentIndex.value = 3
                : null,
          ),
        ],
      ),
    );
  }
}
