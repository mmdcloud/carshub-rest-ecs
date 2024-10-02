// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'common_response.freezed.dart';
part 'common_response.g.dart';

@freezed
class CommonResponse with _$CommonResponse {
  const factory CommonResponse({
    @Default("") String state,
    @Default("") String msg,
  }) = _CommonResponse;

  factory CommonResponse.fromJson(Map<String, Object?> json) =>
      _$CommonResponseFromJson(json);
}
