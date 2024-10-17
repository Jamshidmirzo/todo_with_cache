// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:todo_with_cache/features/home/data/models/news_model.dart';
import 'package:todo_with_cache/features/home/data/models/source_model.dart';

// ignore: must_be_immutable
class NewsEntity  {
  SourceEntity source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  NewsEntity({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });


}

extension NewsMapper on NewsEntity {
  NewsModel toModel() {
    return NewsModel(
        source: source.toSourceModel(),
        author: author,
        title: title,
        description: description,
        url: url,
        urlToImage: urlToImage,
        publishedAt: publishedAt,
        content: content);
  }
}

// ignore: must_be_immutable
class SourceEntity extends Equatable {
  String id;
  String name;
  SourceEntity({
    required this.id,
    required this.name,
  });
  @override
  List<Object?> get props => throw UnimplementedError();
}

extension SourceMapperEnity on SourceEntity {
  SourceModel toSourceModel() {
    return SourceModel(id: id, name: name);
  }
}
