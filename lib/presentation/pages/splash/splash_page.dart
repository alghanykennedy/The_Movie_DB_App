import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/core/utils/index.dart';
import '../../controllers/splash/splash_controller.dart';

class SplashPage extends GetWidget<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: const EdgeInsets.only(bottom: 5.0),
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          child: Container(
                              height: 200,
                              width: 200,
                              padding: const EdgeInsets.all(24.0),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(45.0)),
                              child: Stack(children: [
                                Image.asset(GlobalVariables.images.appLogoPath)
                              ])))
                    ]))));
  }
}
