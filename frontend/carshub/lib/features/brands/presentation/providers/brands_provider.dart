import 'package:carshub/features/brands/data/datasources/brands_remote_datasource.dart';
import 'package:carshub/features/brands/data/repositories/brands_remote_repository_impl.dart';
import 'package:carshub/features/brands/domain/models/brand.dart';
import 'package:carshub/shared/providers/network_client_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final getBrandsProvider =
    Provider.autoDispose<Future<Either<Brand, Response>>>((ref) {
  return ref.watch(brandsRepositoryImplProvider).getBrands();
});

final brandsRemoteDatasourceProvider =
    Provider.autoDispose<BrandsRemoteDatasource>((ref) {
  return BrandsRemoteDatasource(ref.watch(dioClientProvider));
});

final brandsRepositoryImplProvider =
    Provider.autoDispose<BrandsRemoteRepositoryImpl>((ref) {
  return BrandsRemoteRepositoryImpl(ref.watch(brandsRemoteDatasourceProvider));
});
