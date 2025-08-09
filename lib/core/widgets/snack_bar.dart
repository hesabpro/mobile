import 'package:hesab/imports_bindings.dart';

enum SnackBarType {
  success,
  error,
  info;

  Color get color {
    switch (this) {
      case SnackBarType.success:
        return Colors.green;
      case SnackBarType.error:
        return Colors.red;
      case SnackBarType.info:
        return Colors.blue;
    }
  }
}

void showSnackBar(BuildContext context, String msg, {SnackBarType type = SnackBarType.success}) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: type.color.withAlpha(100),
                    width: .5,
                  ),
                  color: type.color.withAlpha(25),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  msg,
                  style: AppStyles.text16Px.medium.copyWith(color: type.color),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);
  Future.delayed(const Duration(seconds: 2), overlayEntry.remove);
}
