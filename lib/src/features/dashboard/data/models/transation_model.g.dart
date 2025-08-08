// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransationModelImpl _$$TransationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransationModelImpl(
      id: (json['_id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      name: json['name'] as String,
      categoryId: json['category_id'] as String?,
      type: $enumDecode(_$TransationTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$TransationModelImplToJson(
        _$TransationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'name': instance.name,
      'category_id': instance.categoryId,
      'type': _$TransationTypeEnumMap[instance.type]!,
    };

const _$TransationTypeEnumMap = {
  TransationType.income: 'income',
  TransationType.expense: 'expense',
};
