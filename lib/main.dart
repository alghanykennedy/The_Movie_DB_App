import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/movieapp.dart';

import 'domain/core/utils/index.dart';

Future<void> initServices() async {
  ConnectivityUtil.configureConnectivityStream();
  GlobalVariables.app.client = Dio(
    BaseOptions(
      headers: <String, String>{
        "Content-Type": "application/json;charset=utf-8",
        "Accept": "application/json;charset=utf-8",
      },
    ),
  );

  debugPrint('Starting GetX Services...');
  await Future.wait(
    <Future<dynamic>>[
      StorageUtil.init(),
      Get.putAsync(() => GlobalVariablesService().init()),
    ],
  );
  debugPrint('All GetX Services Started...');
}

Future<void> main() async {
  debugPrint = (String? message, {int? wrapWidth}) {
    if (!kReleaseMode) {
      log(message.toString());
    }
  };

  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await initServices();
      runApp(
        const MovieApp(),
      );
    },
    (Object error, StackTrace stack) {
      debugPrint('ErrorAboutMovieApp: $error, $stack');
    },
  );
}
