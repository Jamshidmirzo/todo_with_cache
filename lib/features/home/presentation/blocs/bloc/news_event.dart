part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.getAll(String? name) = _getAll;
  const factory NewsEvent.getTOp() = _getTop;


}