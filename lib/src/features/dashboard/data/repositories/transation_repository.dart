import 'package:hesab/imports_bindings.dart';

class TransationRepositoryImpl implements TransationRepository {
  TransationRepositoryImpl({
    required this.transationsDB,
  });

  final TransationsDB transationsDB;

  @override
  Future<Either<AppError, List<TransationModel>>> fetch({
    DateTime? from,
    DateTime? to,
    int? categoryId,
    String? name,
    double? minAmount,
    double? maxAmount,
    int limit = 10,
    int offset = 0,
    String orderBy = 'date ASC',
  }) =>
      transationsDB.fetch(
        from: from,
        to: to,
        categoryId: categoryId,
        name: name,
        minAmount: minAmount,
        maxAmount: maxAmount,
        limit: limit,
        offset: offset,
        orderBy: orderBy,
      );

  @override
  Future<Either<AppError, TransationModel>> insert(TransationModel transation) => transationsDB.insert(transation);

  @override
  Future<Either<AppError, TransationModel>> update(TransationModel transation) => transationsDB.update(transation);

  @override
  Future<Either<AppError, int>> delete(int id) => transationsDB.delete(id);
}
