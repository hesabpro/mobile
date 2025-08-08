import 'package:school_app/imports_bindings.dart';

class InsertTransationUseCase {
  InsertTransationUseCase(this.repository);
  final TransationRepository repository;

  Future<TransationEntity> call(TransationEntity transation) async {
    // Convert TransationEntity to TransationModel
    final model = TransationModel(
      id: transation.id,
      amount: transation.amount,
      date: transation.date,
      name: transation.name,
      categoryId: transation.categoryId,
      type: transation.type,
    );
    final insertedModel = await repository.insert(model);
    // Return as TransationEntity
    return TransationEntity(
      id: insertedModel.id,
      amount: insertedModel.amount,
      date: insertedModel.date,
      name: insertedModel.name,
      categoryId: insertedModel.categoryId,
      type: insertedModel.type,
    );
  }
}
