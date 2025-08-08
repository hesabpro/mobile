import 'package:school_app/imports_bindings.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

///
class AppCubit extends HydratedCubit<AppState> {
  ///
  AppCubit() : super(const AppState());

  ///*
  void changeThemeMode(ThemeMode theme) {
    emit(state.copyWith(themeMode: theme));
    // await NotificationServices.createNotification(
    //   title: 'Theme Changed',
    //   body: 'Current theme mode is ${theme.name}',
    // );
  }

  ///
  void changeLocale(Locale locale) {
    emit(state.copyWith(locale: locale));
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState(
      themeMode: switch (json['theme_mode']) {
        'dark' => ThemeMode.dark,
        _ => ThemeMode.light,
      },
    );
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return {
      'theme_mode': state.themeMode.name,
      'language_code': state.locale.languageCode,
    };
  }
}
