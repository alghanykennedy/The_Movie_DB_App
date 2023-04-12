import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/presentation/controllers/home_movie/index.dart';

import '../../../data/models/index.dart';
import '../custom_widgets/index.dart';
import 'widgets/index.dart';

class PopularMoviesTab extends GetView<PopularMoviesController> {
  const PopularMoviesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
        onRefresh: controller.appendInitialMovies,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 10, right: 10),
              child: ListTile(
                title: Text(
                  'Populer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Film-film populer saat ini",
                  style: TextStyle(fontSize: 14),
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
        ));
  }
}
