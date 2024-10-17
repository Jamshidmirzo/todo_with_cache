// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:todo_with_cache/core/error/exception.dart';
import 'package:todo_with_cache/core/error/failure.dart';
import 'package:todo_with_cache/features/home/data/datasources/local_data_soruces.dart';
import 'package:todo_with_cache/features/home/data/datasources/remote_data_sources.dart';
import 'package:todo_with_cache/features/home/data/models/news_model.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';
import 'package:todo_with_cache/features/home/domain/repositories/news_repositories.dart';

class NewsRepositoriesImpl extends NewsRepositories {
  LocalDataSoruces localDataSoruces;
  RemoteDataSources remoteDataSources;
  InternetConnectionChecker networkChecker;
  NewsRepositoriesImpl({
    required this.localDataSoruces,
    required this.remoteDataSources,
    required this.networkChecker,
  });
  @override
  Future<Either<Failure, List<NewsEntity>>> getAllNews(String? name) async {
    return await _getAll(() => remoteDataSources.getAll(name));
  }

  @override
  Future<Either<Failure, List<NewsEntity>>> getTopNews() async {
    return _getopNews(() => remoteDataSources.getTop());
  }

  Future<Either<Failure, List<NewsEntity>>> _getAll(
      Future<List<NewsModel>> Function() news) async {
    if (await networkChecker.hasConnection) {
      try {
        final responce = await news();
        List<NewsEntity> entities =
            responce.map((element) => element.toEntity()).toList();
        return Right(entities);
      } on ServerException {
        return Left(ServerFailure());
      } on DioException {
        return Left(DioFailure());
      }
    } else {
      return Left(CacheFailure());
    }
  }

  Future<Either<Failure, List<NewsEntity>>> _getopNews(
      Future<List<NewsModel>> Function() news) async {
    if (await networkChecker.hasConnection) {
      try {
        final responce = await news();
        List<NewsEntity> entities =
            responce.map((element) => element.toEntity()).toList();
        localDataSoruces.setNews(entities);
        return Right(entities);
      } on DioException {
        return Left(DioFailure());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final responcefromLocal = await localDataSoruces.getTopNews();
        List<NewsEntity> entities = responcefromLocal
            .map(
              (element) => element.toEntity(),
            )
            .toList();
        return Right(entities);
      } on DioException {
        return Left(DioFailure());
      } on CacheException {
        return Left(
          CacheFailure(),
        );
      }
    }
  }
}
