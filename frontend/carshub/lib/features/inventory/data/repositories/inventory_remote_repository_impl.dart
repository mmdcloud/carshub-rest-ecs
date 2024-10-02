import 'package:carshub/features/inventory/data/datasources/inventory_remote_datasource.dart';
import 'package:carshub/features/inventory/domain/models/inventory.dart';
import 'package:carshub/features/inventory/domain/repositories/inventory_remote_repository.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class InventoryRemoteRepositoryImpl extends InventoryRemoteRepository {
  InventoryRemoteDatasource inventoryRemoteDatasource;
  InventoryRemoteRepositoryImpl(this.inventoryRemoteDatasource);
  @override
  Future<Either<CommonResponse, Response>> addInventory(Inventory inventory) {
    return inventoryRemoteDatasource.addInventory(inventory);
  }

  @override
  Future<Either<CommonResponse, Response>> deleteInventory() {
    return inventoryRemoteDatasource.deleteInventory();
  }

  @override
  Future<Either<Inventory, Response>> getInventory() {
    return inventoryRemoteDatasource.getInventory();
  }

  @override
  Future<Either<CommonResponse, Response>> updateInventory(
      Inventory inventory) {
    return inventoryRemoteDatasource.updateInventory(inventory);
  }
}
