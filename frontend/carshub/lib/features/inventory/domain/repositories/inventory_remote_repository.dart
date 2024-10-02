import 'package:carshub/features/inventory/domain/models/inventory.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class InventoryRemoteRepository {
  Future<Either<Inventory, Response>> getInventory();
  Future<Either<CommonResponse, Response>> addInventory(Inventory inventory);
  Future<Either<CommonResponse, Response>> updateInventory(Inventory inventory);
  Future<Either<CommonResponse, Response>> deleteInventory();
}
