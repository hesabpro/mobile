// ignore_for_file: invalid_annotation_target

import 'package:school_app/imports_bindings.dart';

part 'transation_model.freezed.dart';
part 'transation_model.g.dart';

@freezed
class TransationModel with _$TransationModel implements TransationEntity {
  const factory TransationModel({
    @JsonKey(name: '_id') required int id,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'type') required TransationType type,
  }) = _TransationModel;

  factory TransationModel.fromJson(Map<String, dynamic> json) => _$TransationModelFromJson(json);
}

extension TransationModelExtension on TransationModel {
  Map<String, dynamic> get toDB => {
        'name': name,
        'amount': amount,
        'date': date.toIso8601String(),
        'category_id': categoryId,
        'type': type.name,
      };
}
