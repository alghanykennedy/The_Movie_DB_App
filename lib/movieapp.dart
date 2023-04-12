import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/domain/core/app/strings.dart';

import 'domain/core/theme/index.dart';
import 'domain/core/utils/index.dart';
import 'presentation/navigation/routes/app_pages.dart';
import 'presentation/navigation/routes/app_routes.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({
    Key? key,
  }) : super(key: key);

  static GlobalKey movieAppKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => KeyboardUtil.hideKeyboard(context),
      child: GetMaterialApp(
        key: movieAppKey,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        translations: TranslationsUtil(),
        locale: TranslationsUtil.locale,
        fallbackLocale: TranslationsUtil.fallbackLocale,
        theme: Style.lightTheme,
        darkTheme: Style.darkTheme,
        themeMode: ThemeMode.light,
        defaultTransition: Transition.fadeIn,
        getPages: AppPages.routes,
        initialRoute: AppRoutes.START,
        enableLog: kDebugMode,
        logWriterCallback: (String text, {bool isError = false}) {
          debugPrint("GetXLog: $text");
        },
        navigatorObservers: <NavigatorObserver>[
          GetObserver(),
        ],
      ),
    );
  }
}
