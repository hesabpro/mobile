import 'package:hesab/imports_bindings.dart';

/// bootstraping
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  //* ⚙️ widget binding
  WidgetsFlutterBinding.ensureInitialized();

  //* notification management
  // await NotificationServices.initialize();

  //* 🧪 bloc observer for manageing bloc lyfecyles
  Bloc.observer = const AppBlocObserver();

  //* 🍪📦  session configuration
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorageDirectory.web : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );

  //* 📦 setup di
  setupDI();

  //* 📦 setup database
  await getIt<TransationsDB>().open();

  //* 🏃 for integrate initial widget
  runApp(
    await builder(),
  );
}
