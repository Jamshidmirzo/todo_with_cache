import 'package:dartz/dartz.dart';
import 'package:todo_with_cache/core/error/failure.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';

abstract class NewsRepositories {
  Future<Either<Failure, List<NewsEntity>>> getAllNews(String? name);
  Future<Either<Failure, List<NewsEntity>>> getTopNews();
}
