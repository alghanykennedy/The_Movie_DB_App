import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../domain/core/utils/index.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    Key? key,
    this.height = 70,
  }) : super(
            key: key,
            preferredSize: const Size(414, 70),
            child: const SizedBox());

  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: lightAccentColor,
      toolbarHeight: height,
      title: SizedBox(
        height: height,
        width: 50,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: SvgPicture.asset(GlobalVariables.images.appIconPath),
        ),
      ),
      centerTitle: true,
    );
  }
}
