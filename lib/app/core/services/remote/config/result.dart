import 'package:freezed_annotation/freezed_annotation.dart';
import 'network_exceptions.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success<T>;

  const factory Result.failure(
    NetworkExceptions error,
    StackTrace stackTrace,
  ) = Failure<T>;
}
