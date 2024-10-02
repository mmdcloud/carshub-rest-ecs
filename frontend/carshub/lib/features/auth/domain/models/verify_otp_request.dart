// This file is "main.dart"
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_request.freezed.dart';
part 'verify_otp_request.g.dart';

@freezed
class VerifyOtpRequest with _$VerifyOtpRequest {
  const factory VerifyOtpRequest({
    @Default("") String contact,
    @Default("") String password,
  }) = _VerifyOtpRequest;

  factory VerifyOtpRequest.fromJson(Map<String, Object?> json) =>
      _$VerifyOtpRequestFromJson(json);
}
