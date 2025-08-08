import 'package:hesab/imports_bindings.dart';
import 'package:flutter/material.dart';

///* This extension methords reduces
extension BuildContextX on BuildContext {
  ///* to get screen height
  double get height => MediaQuery.sizeOf(this).height;

  ///* to get screen width
  double get width => MediaQuery.sizeOf(this).width;

  ///* For getting Themes
  ThemeData get theme => Theme.of(this);

  ///* For getting theme inverted color
  Color get color => theme.iconTheme.color!;
}
