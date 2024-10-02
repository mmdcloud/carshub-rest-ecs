import 'package:carshub/features/inventory/data/constants/network_constants.dart';
import 'package:carshub/features/inventory/domain/models/inventory.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:carshub/shared/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class InventoryRemoteDatasource {
  DioClient? dio;
  InventoryRemoteDatasource(this.dio);
  Future<Either<Inventory, Response>> getInventory() async {
    var response = await dio?.get(InventoryNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(Inventory.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> addInventory(
      Inventory inventory) async {
    var response = await dio?.post(InventoryNetworkConstants.ENDPOINT,
        data: inventory.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> updateInventory(
      Inventory inventory) async {
    var response = await dio?.put(InventoryNetworkConstants.ENDPOINT,
        data: inventory.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> deleteInventory() async {
    var response = await dio?.delete(InventoryNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }
}
