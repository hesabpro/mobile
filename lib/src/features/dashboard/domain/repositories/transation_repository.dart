import 'package:school_app/imports_bindings.dart';

abstract class TransationRepository {
  Future<List<TransationModel>> fetch({
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

  Future<TransationModel> insert(TransationModel transation);

  Future<int> update(TransationModel transation);

  Future<int> delete(int id);
}
