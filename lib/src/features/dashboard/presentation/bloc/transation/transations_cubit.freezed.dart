// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transations_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransationsState {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  Option<Either<AppError, Map<String, TransationEntity>>> get transations =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransationsStateCopyWith<TransationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransationsStateCopyWith<$Res> {
  factory $TransationsStateCopyWith(
          TransationsState value, $Res Function(TransationsState) then) =
      _$TransationsStateCopyWithImpl<$Res, TransationsState>;
  @useResult
  $Res call(
      {DateTime selectedDate,
      Option<Either<AppError, Map<String, TransationEntity>>> transations});
}

/// @nodoc
class _$TransationsStateCopyWithImpl<$Res, $Val extends TransationsState>
    implements $TransationsStateCopyWith<$Res> {
  _$TransationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? transations = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transations: null == transations
          ? _value.transations
          : transations // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppError, Map<String, TransationEntity>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransationsStateImplCopyWith<$Res>
    implements $TransationsStateCopyWith<$Res> {
  factory _$$TransationsStateImplCopyWith(_$TransationsStateImpl value,
          $Res Function(_$TransationsStateImpl) then) =
      __$$TransationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedDate,
      Option<Either<AppError, Map<String, TransationEntity>>> transations});
}

/// @nodoc
class __$$TransationsStateImplCopyWithImpl<$Res>
    extends _$TransationsStateCopyWithImpl<$Res, _$TransationsStateImpl>
    implements _$$TransationsStateImplCopyWith<$Res> {
  __$$TransationsStateImplCopyWithImpl(_$TransationsStateImpl _value,
      $Res Function(_$TransationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? transations = null,
  }) {
    return _then(_$TransationsStateImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transations: null == transations
          ? _value.transations
          : transations // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppError, Map<String, TransationEntity>>>,
    ));
  }
}

/// @nodoc

class _$TransationsStateImpl implements _TransationsState {
  const _$TransationsStateImpl(
      {required this.selectedDate, this.transations = const None()});

  @override
  final DateTime selectedDate;
  @override
  @JsonKey()
  final Option<Either<AppError, Map<String, TransationEntity>>> transations;

  @override
  String toString() {
    return 'TransationsState(selectedDate: $selectedDate, transations: $transations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransationsStateImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.transations, transations) ||
                other.transations == transations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate, transations);

  /// Create a copy of TransationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransationsStateImplCopyWith<_$TransationsStateImpl> get copyWith =>
      __$$TransationsStateImplCopyWithImpl<_$TransationsStateImpl>(
          this, _$identity);
}

abstract class _TransationsState implements TransationsState {
  const factory _TransationsState(
      {required final DateTime selectedDate,
      final Option<Either<AppError, Map<String, TransationEntity>>>
          transations}) = _$TransationsStateImpl;

  @override
  DateTime get selectedDate;
  @override
  Option<Either<AppError, Map<String, TransationEntity>>> get transations;

  /// Create a copy of TransationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransationsStateImplCopyWith<_$TransationsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
