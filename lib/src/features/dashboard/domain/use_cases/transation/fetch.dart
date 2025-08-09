import 'package:hesab/imports_bindings.dart';

class FetchTransationsUseCase {
  FetchTransationsUseCase(this.repository);
  final TransationRepository repository;

  Future<Either<AppError, List<TransationEntity>>> call({
    DateTime? from,
    DateTime? to,
    int? categoryId,
    String? name,
    double? minAmount,
    double? maxAmount,
    int limit = 10,
    int offset = 0,
    String orderBy = 'date ASC',
  }) {
    return repository.fetch(
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
  }
}
