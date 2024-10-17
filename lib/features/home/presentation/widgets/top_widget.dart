// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';

class TopWidget extends StatelessWidget {
  final NewsEntity newsIndex;
  const TopWidget({
    super.key,
    required this.newsIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholderErrorBuilder: (context, error, stackTrace) {
                    return const CircularProgressIndicator();
                  },
                  imageErrorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                  placeholder: const AssetImage('assets/images/nophoto.png'),
                  image: NetworkImage(newsIndex.urlToImage),
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsIndex.author,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  newsIndex.title,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
