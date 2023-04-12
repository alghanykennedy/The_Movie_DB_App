import 'package:get/get.dart';

import '../../../domain/core/base/index.dart';

class OverviewController extends BaseController<dynamic> {
  OverviewController();

  final RxBool flag = true.obs;
  final RxString visibleText = ''.obs;
  final RxString invisibleText = ''.obs;
}
