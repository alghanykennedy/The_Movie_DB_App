import 'package:get/get.dart';

import '../../../data/repositories/detail_repository.dart';
import '../../controllers/detail_movie/index.dart';

class DetailPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailProvider>(() => DetailProvider());
    Get.lazyPut<DetailRepository>(() => DetailRepository());
    Get.lazyPut(() => DetailPageController());
    Get.lazyPut(() => OverviewController());
    Get.lazyPut(() => RatingRowController(detailRepository: Get.find()));
  }
}
