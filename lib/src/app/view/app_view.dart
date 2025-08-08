import 'package:school_app/imports_bindings.dart';

///* First widget integrating
class App extends StatelessWidget {
  ///*
  const App({super.key});

  ///* For getting navigation status globally
  ///* eg:context,current state...
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Sizer.init(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()),
          BlocProvider(
            create: (context) => TransationsCubit(
              fetchTransationsUseCase: getIt<FetchTransationsUseCase>(),
              insertTransationUseCase: getIt<InsertTransationUseCase>(),
              updateTransationUseCase: getIt<UpdateTransationUseCase>(),
              deleteTransationUseCase: getIt<DeleteTransationUseCase>(),
            ),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          key: App.navKey,
          theme: lightTheme,
          themeMode: state.themeMode,
          darkTheme: darkTheme,
          title: 'Hesab',
          debugShowCheckedModeBanner: false,
          home: const MainScreen(),
        );
      },
    );
  }
}
