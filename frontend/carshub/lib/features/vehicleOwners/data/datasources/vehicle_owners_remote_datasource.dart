import 'package:carshub/features/vehicleOwners/data/constants/network_constants.dart';
import 'package:carshub/features/vehicleOwners/domain/models/vehicle_owner.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:carshub/shared/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class VehicleOwnersRemoteDatasource {
  DioClient? dio;
  VehicleOwnersRemoteDatasource(this.dio);
  Future<Either<VehicleOwner, Response>> getOwners() async {
    var response = await dio?.get(VehicleOwnersNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(VehicleOwner.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> addOwner(VehicleOwner owner) async {
    var response = await dio?.post(VehicleOwnersNetworkConstants.ENDPOINT,
        data: owner.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> updateOwner(
      VehicleOwner owner) async {
    var response = await dio?.put(VehicleOwnersNetworkConstants.ENDPOINT,
        data: owner.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> deleteOwner() async {
    var response = await dio?.delete(VehicleOwnersNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }
}
