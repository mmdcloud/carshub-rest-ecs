import 'package:carshub/features/inventory/data/datasources/inventory_remote_datasource.dart';
import 'package:carshub/features/inventory/data/repositories/inventory_remote_repository_impl.dart';
import 'package:carshub/features/inventory/domain/models/inventory.dart';
import 'package:carshub/shared/providers/network_client_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final getInventoryProvider =
    Provider.autoDispose<Future<Either<Inventory, Response>>>((ref) {
  return ref.watch(inventoryRepositoryImplProvider).getInventory();
});

final inventoryRemoteDatasourceProvider =
    Provider.autoDispose<InventoryRemoteDatasource>((ref) {
  return InventoryRemoteDatasource(ref.watch(dioClientProvider));
});

final inventoryRepositoryImplProvider =
    Provider.autoDispose<InventoryRemoteRepositoryImpl>((ref) {
  return InventoryRemoteRepositoryImpl(
      ref.watch(inventoryRemoteDatasourceProvider));
});
