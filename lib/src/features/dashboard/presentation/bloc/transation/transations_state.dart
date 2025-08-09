part of 'transations_cubit.dart';

@freezed
class TransationsState with _$TransationsState {
  const factory TransationsState({
    required DateTime selectedDate,
    @Default(None()) Option<Either<AppError, Map<String, TransationEntity>>> transations,
    @Default(0) double totalIncome,
    @Default(0) double totalExpense,
    @Default(0) double totalBalance,
  }) = _TransationsState;
}
