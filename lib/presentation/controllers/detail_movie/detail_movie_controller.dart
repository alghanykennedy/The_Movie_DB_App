import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/index.dart';
import '../../../domain/core/base/index.dart';

class DetailPageController extends BaseController<Map<String, dynamic>> {
  DetailPageController();

  final RxInt currentIndex = 0.obs;

  Movie? movie;
  bool? isMovie;

  @override
  void onInit() {
    super.onInit();
    debugPrint("${Get.arguments}");
    change(Get.arguments, status: RxStatus.success());

    movie = state?['movie'];
    isMovie = state?['isMovie'];
  }
}
