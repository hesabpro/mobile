import 'package:school_app/imports_bindings.dart';

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
    final transationsMap = {
      for (final t in transations) t.id.toString(): t,
    };
    emit(state.copyWith(transations: some(right(transationsMap))));
  }

  Future<void> addTransation(TransationEntity transation) async {
    await insertTransationUseCase(transation);
    await fetchTransations();
  }

  Future<void> updateTransation(String id, TransationEntity transation) async {
    await updateTransationUseCase(transation);
    await fetchTransations();
  }

  Future<void> deleteTransation(String id) async {
    final intId = int.tryParse(id);
    if (intId != null) {
      await deleteTransationUseCase(intId);
    }
    await fetchTransations();
  }
}
