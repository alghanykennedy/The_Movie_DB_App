import 'package:get/get.dart';
import 'package:the_movie_db_app/presentation/bindings/detail_movie/detail_movie_binding.dart';
import 'package:the_movie_db_app/presentation/bindings/login/login_binding.dart';
import 'package:the_movie_db_app/presentation/bindings/signup/signup_binding.dart';
import 'package:the_movie_db_app/presentation/bindings/splash/splash_binding.dart';
import 'package:the_movie_db_app/presentation/navigation/routes/app_routes.dart';
import 'package:the_movie_db_app/presentation/pages/detail_movie/detail_movie.dart';
import 'package:the_movie_db_app/presentation/pages/home_movie/home_movie_page.dart';
import 'package:the_movie_db_app/presentation/pages/login/login_page.dart';
import 'package:the_movie_db_app/presentation/pages/signup/signup_page.dart';
import 'package:the_movie_db_app/presentation/pages/splash/splash_page.dart';

import '../../bindings/home_movie/home_movie_binding.dart';
import '../../index.dart';

class AppPages {
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<SplashPage>(
      name: AppRoutes.START,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      preventDuplicates: true,
    ),
    GetPage<WelcomePage>(
      name: AppRoutes.WELCOME,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
      preventDuplicates: true,
    ),
    GetPage<LoginPage>(
      name: AppRoutes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      preventDuplicates: true,
    ),
    GetPage<SignUpPage>(
      name: AppRoutes.SIGNUP,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
      preventDuplicates: true,
    ),
    GetPage<HomeMoviePage>(
      name: AppRoutes.HOME_MOVIE,
      page: () => const HomeMoviePage(),
      transition: Transition.fadeIn,
      binding: HomeMovieBinding(),
      preventDuplicates: true,
    ),
    GetPage<DetailPage>(
      name: AppRoutes.DETAIL,
      page: () => const DetailPage(),
      transition: Transition.fadeIn,
      binding: DetailPageBinding(),
      preventDuplicates: true,
    ),
  ];
}
