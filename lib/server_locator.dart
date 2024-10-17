import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_with_cache/core/config/dio_config.dart';
import 'package:todo_with_cache/core/config/local_config.dart';
import 'package:todo_with_cache/features/home/data/datasources/local_data_soruces.dart';
import 'package:todo_with_cache/features/home/data/datasources/remote_data_sources.dart';
import 'package:todo_with_cache/features/home/data/repositories/news_repositories.dart';
import 'package:todo_with_cache/features/home/domain/usecases/get_all_news_usecases.dart';
import 'package:todo_with_cache/features/home/domain/usecases/get_top_news_usecases.dart';
import 'package:todo_with_cache/features/home/presentation/blocs/bloc/news_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final SharedPreferences sharedPref = await SharedPreferences.getInstance();
  final client = DioConfig().client;
  sl.registerSingleton<LocalConfig>(LocalConfig(sharedPreferences: sharedPref));
  sl.registerFactory(
      () => NewsBloc(sl<GetAllNewsUsecases>(), sl<GetTopNewsUsecases>()));
  sl.registerFactory(
      () => GetAllNewsUsecases(newsRepositories: sl<NewsRepositoriesImpl>()));
  sl.registerFactory(
      () => GetTopNewsUsecases(newsRepositories: sl<NewsRepositoriesImpl>()));

  sl.registerFactory(
    () => NewsRepositoriesImpl(
      localDataSoruces: sl<LocalDataSorucesImpl>(),
      remoteDataSources: sl<RemoteDataSourcesImpl>(),
      networkChecker: InternetConnectionChecker(),
    ),
  );

  sl.registerFactory(
      () => LocalDataSorucesImpl(localConfig: sl<LocalConfig>()));

  sl.registerFactory(
    () => RemoteDataSourcesImpl(
      dio: client,
    ),
  );
}
