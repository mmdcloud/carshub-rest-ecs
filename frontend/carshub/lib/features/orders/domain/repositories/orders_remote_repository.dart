import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:carshub/features/orders/domain/models/order.dart' as o;

abstract class OrdersRemoteRepository {
  Future<Either<o.Order, Response>> getOrders();
  Future<Either<CommonResponse, Response>> addOrder(o.Order order);
  Future<Either<CommonResponse, Response>> updateOrder(o.Order order);
  Future<Either<CommonResponse, Response>> deleteOrder();
}
