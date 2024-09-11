// Sermon Entity

import 'package:equatable/equatable.dart';

class SermonEntity extends Equatable {
    final String id;
  final String title;
  final String description;
  final String channelId;
  final String channelTitle;
  final String publishedAt;
  final String thumbnailUrl;
  final String liveBroadcastContent;
  final String publishTime;

  // Additional fields from 'statistics' and 'contentDetails'
  final String viewCount;
  final String likeCount;
  final String commentCount;
  final String duration;
  final String definition;
  final bool hasCaption;

  const SermonEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.channelId,
    required this.channelTitle,
    required this.publishedAt,
    required this.thumbnailUrl,
    required this.liveBroadcastContent,
    required this.publishTime,
    this.viewCount = '',
    this.likeCount = '',
    this.commentCount = '',
    this.duration = '',
    this.definition = '',
    this.hasCaption = false,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        channelId,
        channelTitle,
        publishedAt,
        thumbnailUrl,
        liveBroadcastContent,
        publishTime,
        viewCount,
        likeCount,
        commentCount,
        duration,
        definition,
        hasCaption,
      ];
  
}