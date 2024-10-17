import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_with_cache/core/constants/app_constants.dart';
import 'package:todo_with_cache/core/constants/app_dimens.dart';
import 'package:todo_with_cache/core/widgets/error_widget.dart';
import 'package:todo_with_cache/core/widgets/extension.dart';
import 'package:todo_with_cache/core/widgets/loading_widget.dart';
import 'package:todo_with_cache/features/home/presentation/blocs/bloc/news_bloc.dart';
import 'package:todo_with_cache/features/home/presentation/widgets/more_widget.dart';
import 'package:todo_with_cache/features/home/presentation/widgets/top_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.3,
        leading: Padding(
          padding: const EdgeInsets.only(left: AppDimens.PADDING_20),
          child: Image.asset('assets/images/logo.png'),
        ),
        actions: [
          Card(
            elevation: 5,
            child: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                
                if (state.status == Status.Loading) {
                  return const LoadingWidget();
                }
                if (state.status == Status.Error) {
                  return ErrorWidgetNews(
                    message: state.message,
                  );
                }
                if (state.status == Status.Success) {
                  final news = state.topEntities;
                  return news == null
                      ? const Center(
                          child: Text("Came null"),
                        )
                      : ListView.separated(
                          separatorBuilder: (context, index) => 20.sw(),
                          padding:
                              const EdgeInsets.only(left: AppDimens.PADDING_20),
                          scrollDirection: Axis.horizontal,
                          itemCount: news.length,
                          itemBuilder: (context, index) {
                            final newsIndex = news[index];
                            return TopWidget(
                              newsIndex: newsIndex,
                            );
                          },
                        );
                }
                return Container();
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                if (state.status == Status.Loading) {
                  return const LoadingWidget();
                }
                if (state.status == Status.Error) {
                  return ErrorWidgetNews(message: state.message);
                }
                if (state.status == Status.Success) {
                  final news = state.entities;
                  return news == null
                      ? const Center(
                          child: Text("Check internet"),
                        )
                      : ListView.builder(
                          itemCount: news.length,
                          itemBuilder: (context, index) {
                            final newsIndex = news[index];
                            return MoreWidget(
                              newsIndex: newsIndex,
                            );
                          },
                        );
                }
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(
          const NewsEvent.getAll(null),
        );
    context.read<NewsBloc>().add(
          const NewsEvent.getTOp(),
        );
  }
}
