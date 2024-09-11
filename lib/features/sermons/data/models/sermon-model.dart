import 'package:love_community_chapel/features/sermons/domain/entities/sermon-entity.dart';

class SermonModel extends SermonEntity {

  const SermonModel({
    required super.id,
    required super.title,
    required super.description,
    required super.channelId,
    required super.channelTitle,
    required super.publishedAt,
    required super.thumbnailUrl,
    required super.liveBroadcastContent,
    required super.publishTime,
    super.viewCount,
    super.likeCount,
    super.commentCount,
    super.duration,
    super.definition,
    super.hasCaption,
  });

  // Factory constructor to create a Video instance from a JSON object
  factory SermonModel.fromJson(Map<String, dynamic> json) {
    var snippet = json['snippet'];
    var statistics = json['statistics'] ?? {};
    var contentDetails = json['contentDetails'] ?? {};

    return SermonModel(
      id: json['id']['videoId'] ?? '',
      title: snippet['title'] ?? '',
      description: snippet['description'] ?? '',
      channelId: snippet['channelId'] ?? '',
      channelTitle: snippet['channelTitle'] ?? '',
      publishedAt: snippet['publishedAt'] ?? '',
      thumbnailUrl: snippet['thumbnails']['high']['url'] ?? '',
      liveBroadcastContent: snippet['liveBroadcastContent'] ?? 'none',
      publishTime: snippet['publishTime'] ?? '',
      viewCount: statistics['viewCount'] ?? '',
      likeCount: statistics['likeCount'] ?? '',
      commentCount: statistics['commentCount'] ?? '',
      duration: contentDetails['duration'] ?? '',
      definition: contentDetails['definition'] ?? '',
      hasCaption: contentDetails['caption'] == 'true',
    );
  }
  
}