import 'package:carshub/features/orders/data/constants/network_constants.dart';
import 'package:carshub/features/orders/domain/models/order.dart' as o;
import 'package:carshub/shared/models/common_response.dart';
import 'package:carshub/shared/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class OrdersRemoteDatasource {
  DioClient? dio;
  OrdersRemoteDatasource(this.dio);
  Future<Either<o.Order, Response>> getOrders() async {
    var response = await dio?.get(OrdersNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(o.Order.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> addOrder(o.Order order) async {
    var response =
        await dio?.post(OrdersNetworkConstants.ENDPOINT, data: order.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> updateOrder(o.Order order) async {
    var response =
        await dio?.put(OrdersNetworkConstants.ENDPOINT, data: order.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> deleteOrder() async {
    var response = await dio?.delete(OrdersNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }
}
