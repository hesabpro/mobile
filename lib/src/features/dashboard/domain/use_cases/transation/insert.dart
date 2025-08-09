import 'package:hesab/imports_bindings.dart';

class InsertTransationUseCase {
  InsertTransationUseCase(this.repository);
  final TransationRepository repository;

  Future<Either<AppError, TransationEntity>> call(TransationEntity transation) async {
    // Convert TransationEntity to TransationModel
    final model = TransationModel(
      id: transation.id,
      amount: transation.amount,
      date: transation.date,
      name: transation.name,
      categoryId: transation.categoryId,
      type: transation.type,
    );
    return repository.insert(model);
  }
}
