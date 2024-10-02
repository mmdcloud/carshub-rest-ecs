import 'package:carshub/features/buyers/data/constants/network_constants.dart';
import 'package:carshub/features/buyers/domain/models/buyer.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:carshub/shared/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BuyersRemoteDatasource {
  DioClient? dio;
  BuyersRemoteDatasource(this.dio);
  Future<Either<Buyer, Response>> getBuyers() async {
    var response = await dio?.get(BuyersNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(Buyer.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> addBuyer(Buyer buyer) async {
    var response =
        await dio?.post(BuyersNetworkConstants.ENDPOINT, data: buyer.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> updateBuyer(Buyer buyer) async {
    var response =
        await dio?.put(BuyersNetworkConstants.ENDPOINT, data: buyer.toJson());
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }

  Future<Either<CommonResponse, Response>> deleteBuyer() async {
    var response = await dio?.delete(BuyersNetworkConstants.ENDPOINT);
    if (response?.statusCode == 200) {
      return left(CommonResponse.fromJson(response!.data));
    } else {
      return right(response as Response);
    }
  }
}
