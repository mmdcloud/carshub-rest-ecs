import 'package:carshub/features/vehicleModels/data/constants/network_constants.dart';
import 'package:carshub/features/vehicleModels/domain/models/vehicle_model.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:carshub/shared/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class VehicleModelsRemoteDatasource {
  DioClient? dio;
  VehicleModelsRemoteDatasource(this.dio);
  Future<Either<VehicleModel, Response>> getModels() async {
    var response = await dio?.get(VehicleModelNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(VehicleModel.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> addModel(VehicleModel model) async {
    var response = await dio?.post(VehicleModelNetworkConstants.ENDPOINT,
        data: model.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> updateModel(
      VehicleModel model) async {
    var response = await dio?.put(VehicleModelNetworkConstants.ENDPOINT,
        data: model.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> deleteModel() async {
    var response = await dio?.delete(VehicleModelNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }
}
