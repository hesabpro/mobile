// ignore_for_file: public_member_api_docs

import 'package:school_app/core/helpers/sizer/adaptive_sizer.dart';
import 'package:school_app/imports_bindings.dart';

///*
extension ResponsiveSizeExt on num {
  double get w => Sizer.setWidth(this);

  double get h => Sizer.setHeight(this);

  double get r => Sizer.radius(this);

  // double get sp => Sizer().setSp(this);

  Widget get verticalSpace => Sizer.setVerticalSpacing(this);

  Widget get verticalSpaceRadius => Sizer.setVerticalSpacingRadius(this);

  Widget get horizontalSpace => Sizer.setHorizontalSpacing(this);

  Widget get horizontalSpaceRadius => Sizer.setHorizontalSpacingRadius(this);
}
