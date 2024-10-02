// This file is "main.dart"
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_password_request.freezed.dart';
part 'change_password_request.g.dart';

@freezed
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    @Default("") String contact,
    @Default("") String password,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, Object?> json) =>
      _$ChangePasswordRequestFromJson(json);
}
