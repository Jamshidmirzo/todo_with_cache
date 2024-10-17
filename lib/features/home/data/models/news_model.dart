import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_with_cache/features/home/data/models/source_model.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  factory NewsModel({
    required SourceModel source,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

extension NewsMapper on NewsModel {
  NewsEntity toEntity() {
    return NewsEntity(
        source: source.toEntitySource(),
        author: author,
        title: title,
        description: description,
        url: url,
        urlToImage: urlToImage,
        publishedAt: publishedAt,
        content: content);
  }
}
