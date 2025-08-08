//*================[ app sources ]=============================//

export 'core/core.dart';
export 'src/src.dart';

//*================[ internal packages  ]=============================//

export 'dart:async';
export 'dart:convert';
export 'dart:io';
export 'dart:math';

//*================[ external packages ]=============================//

//* Flutter
export 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform, kIsWeb;
export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
export 'package:flutter/rendering.dart';
export 'package:flutter/services.dart';

//* State Management
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:bloc/bloc.dart';
export 'package:hydrated_bloc/hydrated_bloc.dart';

//* User Interface
export 'package:morphable_shape/morphable_shape.dart';

//* Data Class
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:fpdart/fpdart.dart' hide State;
export 'package:json_annotation/json_annotation.dart';

//* Path
export 'package:path_provider/path_provider.dart';

//* Utils
export 'package:intl/intl.dart' show DateFormat;
export 'package:uuid/uuid.dart';
