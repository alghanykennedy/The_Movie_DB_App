import 'package:get/get.dart';
import 'package:the_movie_db_app/presentation/controllers/signup/signup_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
