import 'package:get_it/get_it.dart';
import 'package:school_app/imports_bindings.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt
    ..registerLazySingleton<TransationsDB>(TransationsDB.new)
    ..registerLazySingleton<TransationRepository>(() => TransationRepositoryImpl(transationsDB: getIt()))
    ..registerLazySingleton<FetchTransationsUseCase>(() => FetchTransationsUseCase(getIt()))
    ..registerLazySingleton<InsertTransationUseCase>(() => InsertTransationUseCase(getIt()))
    ..registerLazySingleton<UpdateTransationUseCase>(() => UpdateTransationUseCase(getIt()))
    ..registerLazySingleton<DeleteTransationUseCase>(() => DeleteTransationUseCase(getIt()));
}
