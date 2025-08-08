// ignore_for_file: public_member_api_docs

import 'package:hesab/imports_bindings.dart';

///* For store global typography properties and methords
extension TextStyleX on TextStyle {
  //*Colors
  TextStyle get dark => copyWith(color: AppColors.dark);
  TextStyle get light => copyWith(color: AppColors.light);
  TextStyle get primary => copyWith(color: AppColors.primary);
  TextStyle get error => copyWith(color: AppColors.error);

  //* Custom methords
  TextStyle kcolor(Color color) => copyWith(color: color);

  //* Weight
  TextStyle get extraThin => copyWith(fontWeight: FontWeight.w100);
  TextStyle get thin => copyWith(fontWeight: FontWeight.w300);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semibold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get doubleExtraBold => copyWith(fontWeight: FontWeight.w900);

  //opacity methods
  ///
  TextStyle opacity(double opacity) => copyWith(color: color?.withOpacity(opacity));
}
