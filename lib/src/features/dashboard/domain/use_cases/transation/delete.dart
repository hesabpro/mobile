import 'package:school_app/imports_bindings.dart';

class DeleteTransationUseCase {
  DeleteTransationUseCase(this.repository);
  final TransationRepository repository;

  Future<int> call(int id) async {
    return repository.delete(id);
  }
}
