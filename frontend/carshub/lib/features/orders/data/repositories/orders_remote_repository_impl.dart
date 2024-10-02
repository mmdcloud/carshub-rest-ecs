import 'package:carshub/features/orders/domain/repositories/orders_remote_repository.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:carshub/features/orders/domain/models/order.dart' as o;
import 'package:graphql_flutter/graphql_flutter.dart';
import '../datasources/orders_remote_datasource.dart';

class OrdersRemoteRepositoryImpl extends OrdersRemoteRepository {
  OrdersRemoteDatasource ordersRemoteDatasource;
  OrdersRemoteRepositoryImpl(this.ordersRemoteDatasource);
  @override
  Future<Either<CommonResponse, Response>> addOrder(o.Order order) {
    return ordersRemoteDatasource.addOrder(order);
  }

  @override
  Future<Either<CommonResponse, Response>> deleteOrder() {
    return ordersRemoteDatasource.deleteOrder();
  }

  @override
  Future<Either<o.Order, Response>> getOrders() {
    return ordersRemoteDatasource.getOrders();
  }

  @override
  Future<Either<CommonResponse, Response>> updateOrder(o.Order order) {
    return ordersRemoteDatasource.updateOrder(order);
  }
}
