import 'package:carshub/features/vehicleModels/domain/models/vehicle_model.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class VehicleModelsRemoteRepository {
  Future<Either<VehicleModel, Response>> getModels();
  Future<Either<CommonResponse, Response>> addModel(VehicleModel model);
  Future<Either<CommonResponse, Response>> updateModel(VehicleModel model);
  Future<Either<CommonResponse, Response>> deleteModel();
}
