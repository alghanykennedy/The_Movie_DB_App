import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/domain/core/utils/index.dart';

import '../../navigation/routes/app_routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: SizedBox(
                        width: 70,
                        height: 70,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: SvgPicture.asset(
                                'assets/icons/app_avatar.svg')),
                      ),
                      title: const Text(
                        'Alghany Kennedy',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: const Text(
                        'alghanyka@gmail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: const Icon(
                        Icons.edit_square,
                        size: 28,
                        color: lightAccentColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'app.profile.account'.tr,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'app.profile.member'.tr,
                endIcon: true,
                icon: Icons.person,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'app.profile.changepass'.tr,
                endIcon: true,
                icon: Icons.lock,
                onPress: () {},
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'app.profile.general'.tr,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'app.profile.notifications'.tr,
                endIcon: true,
                icon: Icons.notifications,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'app.profile.language'.tr,
                endIcon: true,
                icon: Icons.travel_explore,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'app.profile.clear_cache'.tr,
                endIcon: true,
                icon: Icons.delete,
                onPress: () {},
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'app.profile.more'.tr,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'app.profile.legal_and_policies'.tr,
                endIcon: true,
                icon: Icons.shield,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'app.profile.Help_and_Feedback'.tr,
                endIcon: true,
                icon: Icons.question_mark,
                onPress: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () => Get.toNamed(AppRoutes.WELCOME),
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: lightAccentColor),
                  child: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'app.profile.logout'.tr,
                  style: const TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.endIcon,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onPress,
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: lightAccentColor),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(title),
        trailing: endIcon ? const Icon(Icons.arrow_forward_ios) : null);
  }
}
