import 'package:carshub/features/auth/domain/models/change_password_request.dart';
import 'package:carshub/features/auth/domain/models/login_request.dart';
import 'package:carshub/features/auth/domain/models/verify_otp_request.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteRepository {
  Future<Either<CommonResponse, Response>> login(LoginRequest request);
  Future<Either<CommonResponse, Response>> verifyOtp(VerifyOtpRequest request);
  Future<Either<CommonResponse, Response>> changePassword(ChangePasswordRequest request);
}
