import 'package:school_app/imports_bindings.dart';

class CreateDialog extends StatelessWidget {
  const CreateDialog({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Theme(
        data: Theme.of(context).copyWith(
          inputDecorationTheme: InputDecorationTheme(
            border: UnderlineInputBorder(borderSide: BorderSide(color: context.color.withAlpha(64))),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: context.color.withAlpha(64))),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: context.color.withAlpha(64))),
            errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: context.color.withAlpha(64))),
            focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: context.color.withAlpha(64))),
            disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: context.color.withAlpha(64))),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.color,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: const RoundedRectangleBorder(),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              side: BorderSide(color: context.color),
              shape: const RoundedRectangleBorder(),
            ),
          ),
        ),
        child: Center(
          child: TapRegion(
            onTapOutside: (event) => Navigator.of(context).pop(),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ColoredBox(
                color: context.theme.scaffoldBackgroundColor,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
