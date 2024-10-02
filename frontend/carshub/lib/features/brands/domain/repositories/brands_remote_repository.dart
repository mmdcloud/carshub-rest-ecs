import 'package:carshub/features/brands/domain/models/brand.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class BrandsRemoteRepository {
  Future<Either<Brand, Response>> getBrands();
  Future<Either<CommonResponse, Response>> addBrand(Brand brand);
  Future<Either<CommonResponse, Response>> updateBrand(Brand brand);
  Future<Either<CommonResponse, Response>> deleteBrand(String id);
}
