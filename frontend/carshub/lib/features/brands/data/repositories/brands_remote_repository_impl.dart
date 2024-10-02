import 'package:carshub/features/brands/data/datasources/brands_remote_datasource.dart';
import 'package:carshub/features/brands/domain/models/brand.dart';
import 'package:carshub/features/brands/domain/repositories/brands_remote_repository.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BrandsRemoteRepositoryImpl extends BrandsRemoteRepository {
  BrandsRemoteDatasource brandsRemoteDatasource;
  BrandsRemoteRepositoryImpl(this.brandsRemoteDatasource);

  @override
  Future<Either<CommonResponse, Response>> addBrand(Brand brand) {
    return brandsRemoteDatasource.addBrand(brand);
  }

  @override
  Future<Either<CommonResponse, Response>> deleteBrand(String id) {
    return brandsRemoteDatasource.deleteBrand(id);
  }

  @override
  Future<Either<Brand, Response>> getBrands() {
    return brandsRemoteDatasource.getBrands();
  }

  @override
  Future<Either<CommonResponse, Response>> updateBrand(Brand brand) {
    return brandsRemoteDatasource.updateBrand(brand);
  }
}
