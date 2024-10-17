// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:todo_with_cache/core/error/failure.dart';
import 'package:todo_with_cache/core/usecase/usecase.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';
import 'package:todo_with_cache/features/home/domain/repositories/news_repositories.dart';

class GetTopNewsUsecases extends Usecase<List<NewsEntity>, void> {
  NewsRepositories newsRepositories;
  GetTopNewsUsecases({
    required this.newsRepositories,
  });
  @override
  Future<Either<Failure, List<NewsEntity>>> call(void params) {
    return newsRepositories.getTopNews();
  }
}
