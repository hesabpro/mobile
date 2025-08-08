import 'package:flutter/cupertino.dart';
import 'package:hesab/imports_bindings.dart';

class Loading extends StatelessWidget {
  const Loading({super.key, this.radius = 16});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        color: AppColors.dark,
        radius: radius,
      ),
    );
  }
}
