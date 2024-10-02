import 'package:carshub/features/vehicleModels/domain/models/vehicle_model.dart';
import 'package:carshub/features/vehicleModels/domain/repositories/vehicle_models_remote_repository.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../datasources/vehicle_models_remote_datasource.dart';

class VehicleModelsRemoteRepositoryImpl extends VehicleModelsRemoteRepository {
  VehicleModelsRemoteDatasource vehicleModelsRemoteDatasource;
  VehicleModelsRemoteRepositoryImpl(this.vehicleModelsRemoteDatasource);
  @override
  Future<Either<CommonResponse, Response>> addModel(VehicleModel model) {
    return vehicleModelsRemoteDatasource.addModel(model);
  }

  @override
  Future<Either<CommonResponse, Response>> deleteModel() {
    return vehicleModelsRemoteDatasource.deleteModel();
  }

  @override
  Future<Either<VehicleModel, Response>> getModels() {
    return vehicleModelsRemoteDatasource.getModels();
  }

  @override
  Future<Either<CommonResponse, Response>> updateModel(VehicleModel model) {
    return vehicleModelsRemoteDatasource.updateModel(model);
  }
}
