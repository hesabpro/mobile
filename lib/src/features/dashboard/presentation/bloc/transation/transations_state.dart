part of 'transations_cubit.dart';

@freezed
class TransationsState with _$TransationsState {
  const factory TransationsState({
    required DateTime selectedDate,
    @Default(None()) Option<Either<AppError, Map<String, TransationEntity>>> transations,
  }) = _TransationsState;
}
