import 'dart:ui';

import 'package:school_app/imports_bindings.dart';

class BlurredCard extends StatelessWidget {
  const BlurredCard({
    required this.child,
    super.key,
    this.onTap,
    this.borderRadius,
  });

  final Widget? child;
  final void Function()? onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius ?? BorderRadius.circular(16),
          child: Container(
            decoration: BoxDecoration(
              color: context.color.withAlpha(4),
              borderRadius: borderRadius ?? BorderRadius.circular(16),
              border: Border.all(
                color: context.color.withAlpha(24),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
