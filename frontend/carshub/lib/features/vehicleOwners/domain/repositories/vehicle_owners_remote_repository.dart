import 'package:carshub/features/vehicleOwners/domain/models/vehicle_owner.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class VehicleOwnersRemoteRepository {
  Future<Either<VehicleOwner, Response>> getOwners();
  Future<Either<CommonResponse, Response>> addOwner(VehicleOwner owner);
  Future<Either<CommonResponse, Response>> updateOwner(VehicleOwner owner);
  Future<Either<CommonResponse, Response>> deleteOwner();
}
