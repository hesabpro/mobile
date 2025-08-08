import 'package:hesab/imports_bindings.dart';

class UpdateTransationUseCase {
  UpdateTransationUseCase(this.repository);
  final TransationRepository repository;

  Future<int> call(TransationEntity transation) async {
    // Convert TransationEntity to TransationModel
    final model = TransationModel(
      id: transation.id,
      amount: transation.amount,
      date: transation.date,
      name: transation.name,
      categoryId: transation.categoryId,
      type: transation.type,
    );
    return repository.update(model);
  }
}
