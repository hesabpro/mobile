import 'package:school_app/imports_bindings.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox.square(
        dimension: 100,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primaryGradientTop,
                AppColors.primaryGradientBottom,
              ],
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              DecoratedShadowedShape(
                shape: PolygonShapeBorder(
                  sides: 8,
                  cornerRadius: 40.toPercentLength,
                  border: DynamicBorderSide(
                    color: context.color,
                    width: 0,
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.dark,
                  ),
                ),
              ).pad(8),
              const Icon(
                Icons.pie_chart,
                color: AppColors.primary,
                size: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
