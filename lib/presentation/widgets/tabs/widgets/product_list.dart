import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_movie_db_app/presentation/navigation/routes/app_routes.dart';

import '../../../../data/models/index.dart';
import '../../../../data/services/network/index.dart';
import 'index.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    required this.productList,
    required this.isMovie,
  }) : super(key: key);

  final List<dynamic>? productList;
  final bool isMovie;

  Widget getProductCard({
    required bool isMovie,
    required List<Movie>? movieList,
    required List<TvSeries>? tvSeriesList,
    required int index,
    required double aspectRatio,
  }) {
    return ProductCard(
      image: movieList?[index].posterPath != null
          ? 'https://image.tmdb.org/t/p/w185${movieList?[index].posterPath}'
          : Url.appLogoUrl,
      title: movieList?[index].title ?? "",
      vote: movieList?[index].voteAverage ?? "",
      releaseDate: movieList?[index].releaseDate ?? "",
      overview: movieList?[index].overview ?? "",
      genre: movieList?[index].genres != null
          ? movieList![index].genres!.map(createGenreContainer).toList()
          : <Widget>[],
      aspectRatio: aspectRatio,
      onTap: () {
        Get.toNamed(
          AppRoutes.DETAIL,
          arguments: <String, dynamic>{
            'movie': movieList?[index],
            'isMovie': true,
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Movie>? _movieList =
        isMovie ? productList as List<Movie>? : <Movie>[];
    final List<TvSeries>? _tvSeriesList =
        !isMovie ? productList as List<TvSeries>? : <TvSeries>[];
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints boxConstraints) {
        const double _aspectRatio = 2.0;
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          primary: false,
          itemCount: (isMovie ? _movieList : _tvSeriesList)?.length ?? 0,
          itemExtent: (Get.context?.width ?? Get.width) / _aspectRatio,
          itemBuilder: (BuildContext context, int index) {
            return getProductCard(
              isMovie: isMovie,
              movieList: _movieList,
              tvSeriesList: _tvSeriesList,
              index: index,
              aspectRatio: _aspectRatio,
            );
          },
        );
      },
    );
  }
}
