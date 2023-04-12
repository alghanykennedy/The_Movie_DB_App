import 'package:get/get.dart';

import '../../../data/repositories/detail_repository.dart';
import '../../../domain/core/base/index.dart';

class RatingRowController extends BaseRepositoryController<DetailRepository,
    DetailProvider, dynamic> {
  RatingRowController({
    required this.detailRepository,
  }) : super(repository: detailRepository);

  final DetailRepository detailRepository;

  final RxBool isRated = false.obs;
  final RxBool isRatedApi = false.obs;
  final RxDouble rate = 0.0.obs;
}
