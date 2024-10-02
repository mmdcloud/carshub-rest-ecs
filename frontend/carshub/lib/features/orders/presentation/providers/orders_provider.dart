import 'package:carshub/features/orders/data/datasources/orders_remote_datasource.dart';
import 'package:carshub/features/orders/data/repositories/orders_remote_repository_impl.dart';
import 'package:carshub/shared/providers/network_client_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:carshub/features/orders/domain/models/order.dart' as o;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final getOrdersProvider =
    Provider.autoDispose<Future<Either<o.Order, Response>>>((ref) {
  return ref.watch(ordersRepositoryImplProvider).getOrders();
});

final ordersRemoteDatasourceProvider =
    Provider.autoDispose<OrdersRemoteDatasource>((ref) {
  return OrdersRemoteDatasource(ref.watch(dioClientProvider));
});

final ordersRepositoryImplProvider =
    Provider.autoDispose<OrdersRemoteRepositoryImpl>((ref) {
  return OrdersRemoteRepositoryImpl(ref.watch(ordersRemoteDatasourceProvider));
});
