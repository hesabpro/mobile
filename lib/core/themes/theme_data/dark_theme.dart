import 'package:school_app/imports_bindings.dart';

///*
final darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.dark,
  primaryColor: AppColors.primary,
  splashColor: Colors.transparent,
  hoverColor: Colors.transparent,
  canvasColor: AppColors.dark,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: AppColors.light,
    brightness: Brightness.dark,
  ),
  dropdownMenuTheme: const DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.dark),
      surfaceTintColor: WidgetStatePropertyAll(AppColors.dark),
    ),
  ),
  cardTheme: const CardThemeData(
    color: Color(0xFF1E1E1E),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.light,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.dark,
  ),
  dialogBackgroundColor: AppColors.dark,
  popupMenuTheme: PopupMenuThemeData(
    color: AppColors.dark,
    surfaceTintColor: AppColors.dark,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        color: AppColors.light.withOpacity(0.1),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: AppStyles.text16Px.light,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.light,
      disabledBackgroundColor: AppColors.lightPrimary,
      disabledForegroundColor: AppColors.light,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixStyle: AppStyles.text14Px.light,
    filled: true,
    fillColor: const Color(0xFF2A2A2A),
    labelStyle: AppStyles.text16Px.light,
    contentPadding: const EdgeInsets.all(20),
    hintStyle: AppStyles.text16Px.copyWith(color: AppColors.light.withOpacity(0.5)),
    errorStyle: AppStyles.text14Px.error,
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 0,
        color: AppColors.light.withOpacity(0.1),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.error,
        width: 1,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.error,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppColors.light.withOpacity(0.1),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppColors.light.withOpacity(0.2),
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppColors.light.withOpacity(0.1),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.light,
      disabledForegroundColor: AppColors.light.withOpacity(0.5),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      side: BorderSide(color: AppColors.light.withOpacity(0.2)),
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.light,
  ),
  textTheme: TextTheme(
    displaySmall: AppStyles.text13Px.light,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: AppStyles.text16Px.light,
    toolbarHeight: 68,
    centerTitle: true,
    backgroundColor: AppColors.dark,
    surfaceTintColor: AppColors.dark,
  ),
);
