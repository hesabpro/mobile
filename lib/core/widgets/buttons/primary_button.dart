import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hesab/imports_bindings.dart';

class Button extends StatelessWidget {
  const Button({
    this.title,
    this.icon,
    super.key,
    this.ontap,
    this.style,
    this.raduis,
    this.isLoading = false,
    this.isDisabled = false,
    this.size,
  });

  final String? title;
  final Widget? icon;
  final void Function()? ontap;
  final TextStyle? style;
  final double? raduis;
  final bool isLoading;
  final bool isDisabled;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size?.width ?? double.infinity,
      height: size?.height ?? 56,
      child: Stack(
        fit: StackFit.expand,
        children: [
          InkWell(
            onTap: ontap?.call ?? () {},
            borderRadius: BorderRadius.circular(raduis ?? 16),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(raduis ?? 16),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.primaryGradientTop,
                    AppColors.primaryGradientBottom,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: switch (isLoading) {
                true => const SpinKitThreeBounce(color: Colors.black, size: 30),
                false => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) icon!,
                      if (icon != null && title != null) const SizedBox(width: 8),
                      if (title != null)
                        Text(
                          title!,
                          style: style ?? AppStyles.text16Px.copyWith(color: Colors.black, fontWeight: FontWeight.w900),
                        ),
                    ],
                  ),
              }
                  .center,
            ),
          ),
          if (isDisabled)
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: const ColoredBox(
                color: Colors.white30,
              ),
            ),
        ],
      ),
    );
  }
}
