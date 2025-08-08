// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransationModel _$TransationModelFromJson(Map<String, dynamic> json) {
  return _TransationModel.fromJson(json);
}

/// @nodoc
mixin _$TransationModel {
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  TransationType get type => throw _privateConstructorUsedError;

  /// Serializes this TransationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransationModelCopyWith<TransationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransationModelCopyWith<$Res> {
  factory $TransationModelCopyWith(
          TransationModel value, $Res Function(TransationModel) then) =
      _$TransationModelCopyWithImpl<$Res, TransationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int id,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'type') TransationType type});
}

/// @nodoc
class _$TransationModelCopyWithImpl<$Res, $Val extends TransationModel>
    implements $TransationModelCopyWith<$Res> {
  _$TransationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? date = null,
    Object? name = null,
    Object? categoryId = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransationType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransationModelImplCopyWith<$Res>
    implements $TransationModelCopyWith<$Res> {
  factory _$$TransationModelImplCopyWith(_$TransationModelImpl value,
          $Res Function(_$TransationModelImpl) then) =
      __$$TransationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int id,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'type') TransationType type});
}

/// @nodoc
class __$$TransationModelImplCopyWithImpl<$Res>
    extends _$TransationModelCopyWithImpl<$Res, _$TransationModelImpl>
    implements _$$TransationModelImplCopyWith<$Res> {
  __$$TransationModelImplCopyWithImpl(
      _$TransationModelImpl _value, $Res Function(_$TransationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? date = null,
    Object? name = null,
    Object? categoryId = freezed,
    Object? type = null,
  }) {
    return _then(_$TransationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransationType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransationModelImpl implements _TransationModel {
  const _$TransationModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'type') required this.type});

  factory _$TransationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransationModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int id;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'date')
  final DateTime date;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'type')
  final TransationType type;

  @override
  String toString() {
    return 'TransationModel(id: $id, amount: $amount, date: $date, name: $name, categoryId: $categoryId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, date, name, categoryId, type);

  /// Create a copy of TransationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransationModelImplCopyWith<_$TransationModelImpl> get copyWith =>
      __$$TransationModelImplCopyWithImpl<_$TransationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransationModelImplToJson(
      this,
    );
  }
}

abstract class _TransationModel implements TransationModel {
  const factory _TransationModel(
          {@JsonKey(name: '_id') required final int id,
          @JsonKey(name: 'amount') required final double amount,
          @JsonKey(name: 'date') required final DateTime date,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'category_id') final String? categoryId,
          @JsonKey(name: 'type') required final TransationType type}) =
      _$TransationModelImpl;

  factory _TransationModel.fromJson(Map<String, dynamic> json) =
      _$TransationModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  int get id;
  @override
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'date')
  DateTime get date;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'type')
  TransationType get type;

  /// Create a copy of TransationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransationModelImplCopyWith<_$TransationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
