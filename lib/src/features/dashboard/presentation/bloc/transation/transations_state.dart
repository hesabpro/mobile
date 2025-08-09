part of 'transations_cubit.dart';

@freezed
class TransationsState with _$TransationsState {
  const factory TransationsState({
    required DateTime selectedDate,
    Option<Either<AppError, TransationEntity>>? addTransation,
    Option<Either<AppError, TransationEntity>>? updateTransation,
    @Default(None()) Option<Either<AppError, List<TransationEntity>>> transations,
    @Default(0) double totalIncome,
    @Default(0) double totalExpense,
    @Default(0) double totalBalance,
  }) = _TransationsState;
}
