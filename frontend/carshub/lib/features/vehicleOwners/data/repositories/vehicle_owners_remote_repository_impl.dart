import 'package:carshub/features/vehicleOwners/data/datasources/vehicle_owners_remote_datasource.dart';
import 'package:carshub/features/vehicleOwners/domain/models/vehicle_owner.dart';
import 'package:carshub/features/vehicleOwners/domain/repositories/vehicle_owners_remote_repository.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class VehicleOwnersRemoteRepositoryImpl extends VehicleOwnersRemoteRepository {
  VehicleOwnersRemoteDatasource vehicleOwnersRemoteDatasource;
  VehicleOwnersRemoteRepositoryImpl(this.vehicleOwnersRemoteDatasource);
  @override
  Future<Either<CommonResponse, Response>> addOwner(VehicleOwner owner) {
    return vehicleOwnersRemoteDatasource.addOwner(owner);
  }

  @override
  Future<Either<CommonResponse, Response>> deleteOwner() {
    return vehicleOwnersRemoteDatasource.deleteOwner();
  }

  @override
  Future<Either<VehicleOwner, Response>> getOwners() {
    return vehicleOwnersRemoteDatasource.getOwners();
  }

  @override
  Future<Either<CommonResponse, Response>> updateOwner(VehicleOwner owner) {
    return vehicleOwnersRemoteDatasource.updateOwner(owner);
  }
}
