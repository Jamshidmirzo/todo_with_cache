// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_with_cache/core/constants/app_constants.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';

class LocalConfig {
  SharedPreferences sharedPreferences;
  LocalConfig({
    required this.sharedPreferences,
  });

  Future<List> getCasheTopNews() async {
    final news = sharedPreferences.getString(constNews) ?? "";
    final decoded = jsonDecode(news);
    return decoded;
  }

  Future<void> setNewstoCashe(List<NewsEntity> news) async {
    String stringlist = jsonEncode(news
        .map(
          (element) => element.toModel(),
        )
        .toList());
    sharedPreferences.setString(constNews, stringlist);
  }
}
