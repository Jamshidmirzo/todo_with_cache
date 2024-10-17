part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
 factory NewsState({
  List<NewsEntity>? entities,
  List<NewsEntity>? topEntities,
  String? message,
  @Default(Status.Loading) Status status,
 })=_NewsState;
}
