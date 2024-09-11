import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/features/sermons/domain/repositories/sermon-respository.dart';

import '../models/sermon-model.dart';

Dio dio = Dio();
const API_KEY = 'AIzaSyD4KCpvm2srtHfVWFTaHGtdEeBU_bWGy1c';
const CHANNEL_ID = 'UCV6IKVf8bLZRDLmhBAfc2TA';

class SermonRepositoryImpl implements SermonRepository {
  @override
  Future<DataState<List<SermonModel>>> getSermons() async {
    Logger().d("Try");
    try {
      var res = await dio.post(
        "https://www.googleapis.com/youtube/v3/search?key=${API_KEY}&channelId=${CHANNEL_ID}&part=snippet,id&order=date&maxResults=50",
      );

      Logger().d(res.data);

      if (res.statusCode == 200) {
        List<SermonModel> sermons = [];
        for (var item in res.data['items']) {
          sermons.add(SermonModel.fromJson(item));
        }
        return DataSuccess(sermons);
      } else {
        return DataFailed(res.data['error']['message']);
      }
    } on DioException catch (error) {
      return DataFailed(error);
    }
  }
}
