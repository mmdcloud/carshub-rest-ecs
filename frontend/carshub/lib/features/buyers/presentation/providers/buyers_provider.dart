import 'package:carshub/features/buyers/data/datasources/buyers_remote_datasource.dart';
import 'package:carshub/features/buyers/data/repositories/buyers_remote_repository_impl.dart';
import 'package:carshub/features/buyers/domain/models/buyer.dart';
import 'package:carshub/shared/providers/network_client_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final getBuyersProvider =
    Provider.autoDispose<Future<Either<Buyer, Response>>>((ref) {
  return ref.watch(buyersRepositoryImplProvider).getBuyers();
});

final buyersRemoteDatasourceProvider =
    Provider.autoDispose<BuyersRemoteDatasource>((ref) {
  return BuyersRemoteDatasource(ref.watch(dioClientProvider));
});

final buyersRepositoryImplProvider =
    Provider.autoDispose<BuyersRemoteRepositoryImpl>((ref) {
  return BuyersRemoteRepositoryImpl(ref.watch(buyersRemoteDatasourceProvider));
});
