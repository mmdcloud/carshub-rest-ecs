import 'package:carshub/features/vehicleModels/data/datasources/vehicle_models_remote_datasource.dart';
import 'package:carshub/features/vehicleModels/data/repositories/vehicle_models_remote_repository_impl.dart';
import 'package:carshub/features/vehicleModels/domain/models/vehicle_model.dart';
import 'package:carshub/shared/providers/network_client_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final getVehicleModelsProvider =
    Provider.autoDispose<Future<Either<VehicleModel, Response>>>((ref) {
  return ref.watch(vehicleModelsRepositoryImplProvider).getModels();
});

final vehicleModelsRemoteDatasourceProvider =
    Provider.autoDispose<VehicleModelsRemoteDatasource>((ref) {
  return VehicleModelsRemoteDatasource(ref.watch(dioClientProvider));
});

final vehicleModelsRepositoryImplProvider =
    Provider.autoDispose<VehicleModelsRemoteRepositoryImpl>((ref) {
  return VehicleModelsRemoteRepositoryImpl(
      ref.watch(vehicleModelsRemoteDatasourceProvider));
});
