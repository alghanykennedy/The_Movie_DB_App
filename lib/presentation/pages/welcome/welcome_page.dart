import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/data/models/session_data.dart';
import 'package:the_movie_db_app/presentation/navigation/routes/app_routes.dart';
import '../../../domain/core/utils/index.dart';
import '../../index.dart';
import '../../widgets/base_widgets/index.dart';
import '../../widgets/custom_widgets/index.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: double.infinity,
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SplashIcon(),
            WelcomeButtons(),
          ],
        ),
      ),
    );
  }
}

class SplashIcon extends GetView<WelcomeController> {
  const SplashIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255,
      width: 255,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(GlobalVariables.images.appLogoPath)),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'app.title'.tr,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'app.introduction'.tr,
              style: const TextStyle(
                color: darkAccentColor,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeButtons extends GetView<WelcomeController> {
  const WelcomeButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        height: 320,
        width: width,
        child: controller.obx(
          (SessionData? state) {
            if (state?.guestSessionId != null) {
              CustomProgressIndicator.closeLoadingOverlay();
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: SizedBox(
                      height: 60,
                      width: 170,
                      child: BaseButton(
                        backgroundColor: lightAccentColor,
                        borderRadius: 6,
                        onPressed: () => Get.toNamed(AppRoutes.LOGIN),
                        text: 'app.start.title'.tr,
                        textColor: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                  SizedBox(
                    height: 60,
                    width: 150,
                    child: BaseDropdownMenu<String>(
                      value: LanguageHelper.getLanguageCode() == "id"
                          ? "Indonesia"
                          : "English",
                      itemList: const <String>["Indonesia", "English"],
                      onChanged: (String? val) {
                        if (val != null) {
                          Get.updateLocale(Locale(
                              val == "Indonesia" ? "id" : "en",
                              val == "Indonesia" ? "ID" : "US"));
                          LanguageHelper.languageSave();
                        }
                      },
                    ),
                  ),
                  const Spacer(flex: 3),
                  SizedBox(
                    height: 60,
                    width: Get.context?.width ?? Get.width,
                    child: Center(
                      child: Text(
                        state?.guestSessionId ?? "",
                        style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              CustomProgressIndicator.openLoadingDialog();
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
