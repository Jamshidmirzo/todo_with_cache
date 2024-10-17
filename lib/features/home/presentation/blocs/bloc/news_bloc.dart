// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todo_with_cache/core/constants/app_constants.dart';
import 'package:todo_with_cache/core/error/failure.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';
import 'package:todo_with_cache/features/home/domain/usecases/get_all_news_usecases.dart';
import 'package:todo_with_cache/features/home/domain/usecases/get_top_news_usecases.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  GetAllNewsUsecases getAllNewsUsecases;
  GetTopNewsUsecases getTopNewsUsecases;
  NewsBloc(
    this.getAllNewsUsecases,
    this.getTopNewsUsecases,
  ) : super(NewsState()) {
    on<_getAll>(_getNews);
    on<_getTop>(_getTopNews);
  }

  Future<void> _getTopNews(_getTop event, Emitter<NewsState> emit) async {
    emit(state.copyWith(status: Status.Loading));
    final responce = await getTopNewsUsecases(null);
    responce.fold((error) {
      emit(state.copyWith(
          status: Status.Error, message: _failureMessage(error)));
    }, (data) {
      emit(state.copyWith(status: Status.Success, topEntities: data));
    });
  }

  Future<void> _getNews(_getAll event, Emitter<NewsState> emit) async {
    emit(state.copyWith(status: Status.Loading));
    final responce = await getAllNewsUsecases(AllnewsParams(name: event.name));
    responce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, entities: data));
    });
  }

  String _failureMessage(Failure failure) {
    switch (failure) {
      case ServerFailure():
        return "Error when getting from server";
      case CacheFailure():
        return "Please chec tyour intiernet";
      case DioFailure():
        return "DIO ERROR";
      default:
        return 'Smth grt wrong';
    }
  }
}
