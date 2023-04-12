import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../data/models/index.dart';
import '../../controllers/home_movie/index.dart';
import '../custom_widgets/index.dart';
import 'widgets/index.dart';

class NowPlayingMoviesTab extends GetView<NowPlayingMoviesController> {
  const NowPlayingMoviesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: controller.appendInitialMovies,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
            child: ListTile(
              leading: SizedBox(
                width: 70,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: SvgPicture.asset('assets/icons/app_avatar.svg')),
              ),
              title: const Text(
                'Hello, Alghany Kennedy',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "Let's stream your favorite movie",
                style: TextStyle(fontSize: 14),
              ),
              trailing: const Icon(
                Icons.favorite,
                size: 26,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ListTile(
              title: Text(
                'movies.now_playing.icon'.tr,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'movies.now_playing.icon.subtitle'.tr,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: controller.scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    controller.obx(
                      (MovieWrapper? movieWrapper) {
                        if (movieWrapper != null) {
                          return ProductList(
                            productList: movieWrapper.results,
                            isMovie: true,
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                      onError: (String? msg) => const SizedBox(),
                      onEmpty: const SizedBox(),
                      onLoading: const SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
