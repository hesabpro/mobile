import 'package:hesab/imports_bindings.dart';

part 'app_errors.freezed.dart';

///
@freezed
class AppError with _$AppError implements Exception {
  /// 500 Server Error
  const factory AppError.server({@Default('Server went wrong ! Please try again later ') String msg}) = _ServerError;

  /// 404 Server Error
  const factory AppError.notFound({@Default('Something went wrong ! Please try again later ') String msg}) = _NotFoundError;

  /// Internet Error
  const factory AppError.network({@Default('Please make sure about your connection !') String msg}) = _NetworkError;

  /// Internet Error
  const factory AppError.unknown({@Default('Something went wrong ! Please try again later ') String msg}) = _UnKnownError;
}
