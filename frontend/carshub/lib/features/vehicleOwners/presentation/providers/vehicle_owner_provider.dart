import 'package:carshub/features/vehicleOwners/data/datasources/vehicle_owners_remote_datasource.dart';
import 'package:carshub/features/vehicleOwners/data/repositories/vehicle_owners_remote_repository_impl.dart';
import 'package:carshub/features/vehicleOwners/domain/models/vehicle_owner.dart';
import 'package:carshub/shared/providers/network_client_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final getVehicleOwnersProvider =
    Provider.autoDispose<Future<Either<VehicleOwner, Response>>>((ref) {
  return ref.watch(vehicleOwnersRepositoryImplProvider).getOwners();
});

final vehicleOwnersRemoteDatasourceProvider =
    Provider.autoDispose<VehicleOwnersRemoteDatasource>((ref) {
  return VehicleOwnersRemoteDatasource(ref.watch(dioClientProvider));
});

final vehicleOwnersRepositoryImplProvider =
    Provider.autoDispose<VehicleOwnersRemoteRepositoryImpl>((ref) {
  return VehicleOwnersRemoteRepositoryImpl(
      ref.watch(vehicleOwnersRemoteDatasourceProvider));
});
