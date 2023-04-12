import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/data/models/session_data.dart';
import '../../../data/repositories/splash_repository.dart';
import '../../../domain/core/base/index.dart';
import '../../../domain/core/utils/index.dart';
import '../../widgets/utils_widgets/index.dart';

class WelcomeController extends BaseRepositoryController<SplashRepository,
    SplashProvider, SessionData?> {
  WelcomeController() : super(repository: SplashRepository());

  Future<bool> _connectivityCheck() async {
    if (await Connectivity().checkConnectivity() != ConnectivityResult.none) {
      return true;
    } else {
      await Get.to(
        () => const NoConnectionWidget(
          restartRequired: true,
        ),
      );
      return false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    append(() => repository.getSessionId);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    if (LanguageHelper.getLocale() == null && Get.locale == null) {
      await Get.updateLocale(TranslationsUtil.fallbackLocale);
    }
    LanguageHelper.languageSave();

    final bool isConnected = await _connectivityCheck();

    if (GlobalVariables.app.restartRequired || !isConnected) {
      await Get.to(
        () => const NoConnectionWidget(
          restartRequired: true,
        ),
      );
    }
  }
}
