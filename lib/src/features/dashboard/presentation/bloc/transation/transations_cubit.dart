import 'package:hesab/imports_bindings.dart';

part 'transations_state.dart';
part 'transations_cubit.freezed.dart';

class TransationsCubit extends Cubit<TransationsState> {
  TransationsCubit({
    required this.fetchTransationsUseCase,
    required this.insertTransationUseCase,
    required this.updateTransationUseCase,
    required this.deleteTransationUseCase,
  }) : super(TransationsState(selectedDate: DateTime.now()));

  final FetchTransationsUseCase fetchTransationsUseCase;
  final InsertTransationUseCase insertTransationUseCase;
  final UpdateTransationUseCase updateTransationUseCase;
  final DeleteTransationUseCase deleteTransationUseCase;

  void setSelectedDate(DateTime date) {
    final oldDate = state.selectedDate;
    emit(state.copyWith(selectedDate: date));
    if (oldDate.year == date.year && oldDate.month == date.month) {
      return;
    }
    fetchTransations();
  }

  Future<void> fetchTransations({
    int? categoryId,
    String? name,
    double? minAmount,
    double? maxAmount,
    int limit = 10,
    int offset = 0,
    String orderBy = 'date ASC',
  }) async {
    emit(state.copyWith(transations: const None()));
    final transations = await fetchTransationsUseCase(
      from: DateTime(state.selectedDate.year, state.selectedDate.month),
      to: DateTime(state.selectedDate.year, state.selectedDate.month + 1).subtract(const Duration(days: 1)),
      categoryId: categoryId,
      name: name,
      minAmount: minAmount,
      maxAmount: maxAmount,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
    );

    // Use id as key (assuming TransationEntity.id is unique and int)
    transations.fold(
      (l) => emit(state.copyWith(transations: some(transations))),
      (r) {
        final totalIncome = r.where((t) => t.type == TransationType.income).fold<double>(0, (sum, t) => sum + t.amount);
        final totalExpense = r.where((t) => t.type == TransationType.expense).fold<double>(0, (sum, t) => sum + t.amount);
        final totalBalance = totalIncome - totalExpense;
        emit(
          state.copyWith(
            transations: some(transations),
            totalIncome: totalIncome,
            totalExpense: totalExpense,
            totalBalance: totalBalance,
          ),
        );
      },
    );
  }

  Future<void> addTransation(TransationEntity transation) async {
    emit(state.copyWith(addTransation: const None()));
    final result = await insertTransationUseCase(transation);
    await fetchTransations();
    emit(state.copyWith(addTransation: some(result)));
  }

  Future<void> updateTransation(String id, TransationEntity transation) async {
    emit(state.copyWith(updateTransation: const None()));
    final result = await updateTransationUseCase(transation);
    await fetchTransations();
    emit(state.copyWith(updateTransation: some(result)));
  }

  Future<void> deleteTransation(String id) async {
    final intId = int.tryParse(id);
    if (intId != null) {
      await deleteTransationUseCase(intId);
    }
    await fetchTransations();
  }
}
