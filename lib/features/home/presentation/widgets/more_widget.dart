// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo_with_cache/core/constants/app_dimens.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';

class MoreWidget extends StatelessWidget {
 final NewsEntity newsIndex;
  const MoreWidget({
    super.key,
    required this.newsIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_10),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(newsIndex.urlToImage)),
        ),
      ),
      title: Text(newsIndex.title),
      subtitle: Text(newsIndex.publishedAt),
    );
    
  }
}
