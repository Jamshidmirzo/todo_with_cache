import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_with_cache/features/home/domain/entity/news_entity.dart';
part 'source_model.freezed.dart';
part 'source_model.g.dart';

@freezed
class SourceModel with _$SourceModel {
  factory SourceModel({
    required String id,
    required String name,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelImpl.fromJson(json);
}

extension SourceMapper on SourceModel {
  SourceEntity toEntitySource() {
    return SourceEntity(id: id, name: name);
  }
}
