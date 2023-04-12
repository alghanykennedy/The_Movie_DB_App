class Url {
  //API key
  static const String apiKey = "c13483ba4a2b96195f7935b0e172a1a4";

  //Base URLs
  static const String movieDbBaseUrl = 'https://api.themoviedb.org/3';

  //Authentication URLs
  static const String sessionIdUrl = '/authentication/guest_session/new';
  static String? guestSessionId;

  //Logo & Background Images Path&Urls
  static const String appLogoUrl =
      "https://www.themoviedb.org/assets/2/apple-touch-icon-cfba7699efe7a742de25c28e08c38525f19381d31087c69e89d6bcb8e3c0ddfa.png";
  static const String appLogoPath = "assets/icons/app_logo.png";
  static const String backgroundUrl = "";

  //Movies URLs
  static const String latestMovie = '/movie/latest';
  static const String nowPlayingMovies = '/movie/now_playing';
  static const String popularMovies = '/movie/popular';
  static const String topRatedMovies = '/movie/top_rated';
  static const String upcomingMovies = '/movie/upcoming';

  static String rateMovie(int movieId) => '/movie/$movieId/rating';

  //About Me&App
  static const String authorProfile =
      'https://www.linkedin.com/in/alghanykennedyadam/';
  static const String emailUrl = 'alghanyka@gmail.com';
  static const String appSource =
      'https://github.com/alghanykennedy/The_Movie_DB_App';
}
