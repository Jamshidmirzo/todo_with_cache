// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:todo_with_cache/core/error/failure.dart';
import 'package:todo_with_cache/core/usecase/usecase.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';
import 'package:todo_with_cache/features/home/domain/repositories/news_repositories.dart';

class GetAllNewsUsecases extends Usecase<List<NewsEntity>, AllnewsParams> {
  NewsRepositories newsRepositories;
  GetAllNewsUsecases({
    required this.newsRepositories,
  });
  @override
  Future<Either<Failure, List<NewsEntity>>> call(AllnewsParams params) {
    return newsRepositories.getAllNews(params.name);
  }
}

class AllnewsParams {
  String? name;
  AllnewsParams({
    this.name,
  });
}
