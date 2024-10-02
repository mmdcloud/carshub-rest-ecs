import 'package:carshub/features/brands/data/constants/network_constants.dart';
import 'package:carshub/features/brands/domain/models/brand.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:carshub/shared/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BrandsRemoteDatasource {
  DioClient? dio;
  BrandsRemoteDatasource(this.dio);
  Future<Either<Brand, Response>> getBrands() async {
    var response = await dio?.get(BrandsNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(Brand.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> addBrand(Brand brand) async {
    var response =
        await dio?.post(BrandsNetworkConstants.ENDPOINT, data: brand.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> updateBrand(Brand brand) async {
    var response =
        await dio?.put(BrandsNetworkConstants.ENDPOINT, data: brand.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> deleteBrand(String id) async {
    var response =
        await dio?.delete(BrandsNetworkConstants.ENDPOINT, data: {id: id});
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }
}
