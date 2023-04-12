import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemeIcons {
  const ThemeIcons({
    this.color,
    this.height = 20.0,
    this.width = 20.0,
    this.name = 'assets/icons/app_icon.svg',
  });

  final Color? color;
  final double height;
  final double width;
  final String name;

  SvgPicture get theMovieDBLogo {
    return SvgPicture.asset(
      'assets/icons/app_icon.svg',
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(
        color ?? Colors.white,
        BlendMode.srcATop,
      ),
      semanticsLabel: '',
    );
  }

  SvgPicture get nowPlayingMovie {
    return SvgPicture.asset(
      'assets/icons/nowplaying_icon.svg',
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(
        color ?? Colors.white,
        BlendMode.srcATop,
      ),
      semanticsLabel: '',
    );
  }

  SvgPicture get popularMovie {
    return SvgPicture.asset(
      'assets/icons/popular_icon.svg',
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(
        color ?? Colors.white,
        BlendMode.srcATop,
      ),
      semanticsLabel: '',
    );
  }

  SvgPicture get topRatedMovie {
    return SvgPicture.asset(
      'assets/icons/toprated_icon.svg',
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(
        color ?? Colors.white,
        BlendMode.srcATop,
      ),
      semanticsLabel: '',
    );
  }

  SvgPicture get upcomingMovie {
    return SvgPicture.asset(
      'assets/icons/upcoming_icon.svg',
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(
        color ?? Colors.white,
        BlendMode.srcATop,
      ),
      semanticsLabel: '',
    );
  }

  SvgPicture get profile {
    return SvgPicture.asset(
      'assets/icons/app_profile.svg',
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(
        color ?? Colors.white,
        BlendMode.srcATop,
      ),
      semanticsLabel: '',
    );
  }
}
