import 'package:the_movie_db_app/domain/core/base/index.dart';

class BaseRepository<P extends BaseProvider> {
  BaseRepository({
    required this.provider,
  });

  final P provider;
}
