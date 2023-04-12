import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/presentation/controllers/login/login_controller.dart';
import 'package:the_movie_db_app/presentation/navigation/routes/app_routes.dart';

import '../../../domain/core/utils/index.dart';
import '../../widgets/base_widgets/index.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: IconButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.WELCOME);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          title: Text(
            'app.login'.tr,
            style: const TextStyle(color: Colors.black, fontSize: 18.0),
          ),
          centerTitle: true,
        ),
        body: Form(
            // key: controller.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                  GlobalVariables.images.appLogoPath)),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'app.login.title'.tr,
                            style: const TextStyle(
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'app.login.subtitle'.tr,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      // controller: controller.email,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) {
                        // controller.email.text = value!;
                      },
                      // validator: (value) {
                      //   return controller.validateEmail(value!);
                      // },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.mail_outline),
                          labelText: 'app.form.email_labeltext'.tr,
                          hintText: 'app.form.email_hinttext'.tr,
                          border: const OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      // controller: controller.password,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      onSaved: (value) {
                        // controller.password.text = value!;
                      },
                      // validator: (value) {
                      //   return controller.validatePassword(value!);
                      // },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.fingerprint),
                          labelText: 'app.form.password_labeltext'.tr,
                          hintText: 'app.form.password_hinttext'.tr,
                          border: const OutlineInputBorder(),
                          suffixIcon: const IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp))),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'app.forgotpassword'.tr,
                          style: const TextStyle(color: lightAccentColor),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: BaseButton(
                        backgroundColor: lightAccentColor,
                        borderRadius: 6,
                        onPressed: () => Get.toNamed(AppRoutes.HOME_MOVIE),
                        text: 'app.login'.tr,
                        textColor: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'app.donthaveacc'.tr,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.SIGNUP);
                          },
                          child: Text(
                            'app.signup'.tr,
                            style: const TextStyle(color: lightAccentColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
                              child: const Divider(
                                color: Colors.black,
                                height: 36,
                              )),
                        ),
                        Text(
                          'app.divider'.tr,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 10.0),
                              child: const Divider(
                                color: Colors.black,
                                height: 36,
                              )),
                        ),

                        // )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )),
                      child: ListTile(
                        onTap: () {},
                        leading: Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child:
                              SvgPicture.asset("assets/icons/app_google.svg"),
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text('app.login.google'.tr),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )),
                      child: ListTile(
                        onTap: () {},
                        leading: Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: SvgPicture.asset(
                            "assets/icons/app_facebook.svg",
                          ),
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text('app.login.facebook'.tr),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
