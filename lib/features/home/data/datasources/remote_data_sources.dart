// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:todo_with_cache/core/error/exception.dart';
import 'package:todo_with_cache/features/home/data/models/news_model.dart';

abstract class RemoteDataSources {
  Future<List<NewsModel>> getAll(String? name);
  Future<List<NewsModel>> getTop();
}

class RemoteDataSourcesImpl extends RemoteDataSources {
  Dio dio;
  RemoteDataSourcesImpl({
    required this.dio,
  });

  @override
  Future<List<NewsModel>> getAll(String? name) async {
    final responce = await dio.get(
      '/everything',
      queryParameters: {
        "q": name ?? 'news',
      },
    );

    if (responce.statusCode == 200) {
      List<NewsModel> news = (responce.data['articles'] as List)
          .map((element) => NewsModel.fromJson(element))
          .toList();
      return news;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<NewsModel>> getTop() async {
    const url = 'top-headlines?country=us';
    final responce = await dio.get(url);

    if (responce.statusCode == 200) {
      List<NewsModel> topNews = (responce.data['articles'] as List)
          .map((element) => NewsModel.fromJson(element))
          .toList();
      return topNews;
    } else {
      throw ServerException();
    }
  }
}


