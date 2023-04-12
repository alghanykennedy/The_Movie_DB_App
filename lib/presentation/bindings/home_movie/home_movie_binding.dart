import 'package:get/get.dart';
import 'package:the_movie_db_app/data/repositories/home_movie_repository.dart';

import '../../controllers/home_movie/index.dart';

class HomeMovieBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeMovieProvider>(() => HomeMovieProvider());
    Get.lazyPut<HomeMovieRepository>(() => HomeMovieRepository());
    Get.lazyPut(() => HomeMovieController());
    Get.lazyPut(
        () => NowPlayingMoviesController(homeMovieRepository: Get.find()));
    Get.lazyPut(() => PopularMoviesController(homeMovieRepository: Get.find()));
    Get.lazyPut(
        () => TopRatedMoviesController(homeMovieRepository: Get.find()));
    Get.lazyPut(
        () => UpcomingMoviesController(homeMovieRepository: Get.find()));
  }
}
