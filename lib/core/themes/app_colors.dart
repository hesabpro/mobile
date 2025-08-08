// ignore_for_file: public_member_api_docs

import 'package:hesab/imports_bindings.dart';

///* Store colors using this application
@immutable
abstract class AppColors {
  //*Theme primary color
  static const Color primary = Colors.lightGreen;
  static const Color primaryGradientTop = Color(0xff4CAF50);
  static const Color primaryGradientBottom = Color(0xffCDDC39);
  static const Color lightPrimary = Color.fromARGB(255, 197, 225, 165);
  static const Color secondary = Color.fromRGBO(33, 71, 141, 1);
  static const Color light = Colors.white;
  static const Color dark = Colors.black;
  static const Color error = Colors.red;
  static const Color lightGrey = Color.fromRGBO(221, 221, 221, 1);
  static const Color greyColor = Color.fromRGBO(153, 153, 153, 1);
  static const Color darkBlue = Color.fromRGBO(0, 17, 48, 1);
  static const Color fillColor = Color.fromRGBO(247, 248, 250, 1);
  static const Color pageColor = Color.fromRGBO(248, 251, 255, 1);
  static const Color hintColor = Color.fromRGBO(68, 68, 68, 1);
}
