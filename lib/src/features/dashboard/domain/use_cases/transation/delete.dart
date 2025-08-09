import 'package:hesab/imports_bindings.dart';

class DeleteTransationUseCase {
  DeleteTransationUseCase(this.repository);
  final TransationRepository repository;

  Future<Either<AppError, int>> call(int id) async {
    return repository.delete(id);
  }
}
