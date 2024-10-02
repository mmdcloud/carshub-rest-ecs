import 'package:carshub/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:carshub/features/auth/domain/models/change_password_request.dart';
import 'package:carshub/features/auth/domain/models/login_request.dart';
import 'package:carshub/features/auth/domain/models/verify_otp_request.dart';
import 'package:carshub/features/auth/domain/repositories/auth_remote_repository.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRemoteRepositoryImpl extends AuthRemoteRepository {
  AuthRemoteDatasource authRemoteDatasource;
  AuthRemoteRepositoryImpl(this.authRemoteDatasource);
  @override
  Future<Either<CommonResponse, Response>> login(LoginRequest request) {
    return authRemoteDatasource.login(request);
  }

  @override
  Future<Either<CommonResponse, Response>> verifyOtp(VerifyOtpRequest request) {
    return authRemoteDatasource.verifyOtp(request);
  }

  @override
  Future<Either<CommonResponse, Response>> changePassword(
      ChangePasswordRequest request) {
    return authRemoteDatasource.changePassword(request);
  }
}
