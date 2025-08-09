import 'package:hesab/imports_bindings.dart';

abstract class TransationRepository {
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
  });

  Future<Either<AppError, TransationModel>> insert(TransationModel transation);

  Future<Either<AppError, TransationModel>> update(TransationModel transation);

  Future<Either<AppError, int>> delete(int id);
}
