import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/presentation/controllers/signup/signup_controller.dart';
import 'package:the_movie_db_app/presentation/navigation/routes/app_routes.dart';

import '../../../domain/core/utils/global_variables.dart';
import '../../../domain/core/utils/index.dart';
import '../../widgets/base_widgets/index.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

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
            'app.signup'.tr,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
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
                          'app.signup.title'.tr,
                          style: const TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'app.signup.subtitle'.tr,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  TextFormField(
                    // controller: controller.email,
                    keyboardType: TextInputType.name,
                    onSaved: (value) {
                      // controller.email.text = value!;
                    },
                    // validator: (value) {
                    //   return controller.validateEmail(value!);
                    // },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline_outlined),
                        labelText: 'app.form.name_labeltext'.tr,
                        hintText: 'app.form.name_hinttext'.tr,
                        border: const OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
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
                        hintText: 'app.form.name_hinttext'.tr,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => Theme(
                      data: ThemeData(
                        checkboxTheme: const CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                        ),
                      ),
                      child: CheckboxListTile(
                        title: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(text: 'app.checkbox1'.tr),
                              TextSpan(
                                text: 'app.checkbox2'.tr,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              const TextSpan(text: ', '),
                              TextSpan(
                                text: 'app.checkbox3'.tr,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(text: 'app.checkbox4'.tr),
                              TextSpan(
                                text: 'app.checkbox5'.tr,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) =>
                            controller.isChecked.value = value!,
                        value: controller.isChecked.value,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: BaseButton(
                      backgroundColor: lightAccentColor,
                      borderRadius: 6,
                      onPressed: () => Get.toNamed(AppRoutes.HOME_MOVIE),
                      text: 'app.signup'.tr,
                      textColor: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'app.alreadyhaveacc'.tr,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.LOGIN);
                        },
                        child: Text(
                          'app.login'.tr,
                          style: const TextStyle(color: lightAccentColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )));
  }
}
