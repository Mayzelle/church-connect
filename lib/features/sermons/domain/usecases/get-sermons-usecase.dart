// Get Sermons UseCase

import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/core/usecase/usecase.dart';

import '../entities/sermon-entity.dart';
import '../repositories/sermon-respository.dart';

class GetSermonsUseCase implements UseCase<DataState<List<SermonEntity>>, void> {
  final SermonRepository sermonRepository;

  GetSermonsUseCase(this.sermonRepository);

  @override
  Future<DataState<List<SermonEntity>>> call(void params) async {
    return await sermonRepository.getSermons();
  }
}