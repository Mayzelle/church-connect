import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/features/sermons/data/models/sermon-model.dart';

abstract class SermonRepository {
  Future<DataState<List<SermonModel>>> getSermons();
}
