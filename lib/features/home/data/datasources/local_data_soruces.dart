// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_with_cache/core/config/local_config.dart';
import 'package:todo_with_cache/core/error/exception.dart';
import 'package:todo_with_cache/features/home/data/models/news_model.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';

sealed class LocalDataSoruces {
  Future<List<NewsModel>> getTopNews();
  Future<void> setNews(List<NewsEntity> news);
}

class LocalDataSorucesImpl extends LocalDataSoruces {
  LocalConfig localConfig;

  LocalDataSorucesImpl({
    required this.localConfig,
  });

  @override
  Future<List<NewsModel>> getTopNews() async {
    final news = await localConfig.getCasheTopNews();
  
    if (news.isNotEmpty) {
      List<NewsModel> models =
          news.map((element) => NewsModel.fromJson(element)).toList();
      return models;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> setNews(List<NewsEntity> news) async {
    await localConfig.setNewstoCashe(news);
  }
}
