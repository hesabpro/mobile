import 'package:hesab/imports_bindings.dart';

class TransationRepositoryImpl implements TransationRepository {
  TransationRepositoryImpl({
    required this.transationsDB,
  });

  final TransationsDB transationsDB;

  @override
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
  Future<TransationModel> insert(TransationModel transation) => transationsDB.insert(transation);

  @override
  Future<int> update(TransationModel transation) => transationsDB.update(transation);

  @override
  Future<int> delete(int id) => transationsDB.delete(id);
}
