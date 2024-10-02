import 'package:carshub/features/auth/data/constants/network_constants.dart';
import 'package:carshub/features/auth/domain/models/change_password_request.dart';
import 'package:carshub/features/auth/domain/models/login_request.dart';
import 'package:carshub/features/auth/domain/models/verify_otp_request.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:carshub/shared/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRemoteDatasource {
  DioClient? dio;
  AuthRemoteDatasource(this.dio);
  Future<Either<CommonResponse, Response>> login(LoginRequest request) async {
    var response = await dio?.post(AuthNetworkConstants.AUTH_LOGIN,
        data: request.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> verifyOtp(
      VerifyOtpRequest request) async {
    var response = await dio?.post(AuthNetworkConstants.AUTH_LOGIN,
        data: request.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> changePassword(
      ChangePasswordRequest request) async {
    var response = await dio?.post(AuthNetworkConstants.CHANGE_PASSWORD,
        data: request.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }
}
