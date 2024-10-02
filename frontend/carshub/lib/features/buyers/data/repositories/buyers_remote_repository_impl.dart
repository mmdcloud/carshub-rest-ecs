import 'package:carshub/features/buyers/data/datasources/buyers_remote_datasource.dart';
import 'package:carshub/features/buyers/domain/models/buyer.dart';
import 'package:carshub/features/buyers/domain/repositories/buyers_remote_repository.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BuyersRemoteRepositoryImpl extends BuyersRemoteRepository {
  BuyersRemoteDatasource buyersRemoteDatasource;
  BuyersRemoteRepositoryImpl(this.buyersRemoteDatasource);
  @override
  Future<Either<CommonResponse, Response>> addBuyer(Buyer buyer) {
    return buyersRemoteDatasource.addBuyer(buyer);
  }

  @override
  Future<Either<CommonResponse, Response>> deleteBuyer() {
    return buyersRemoteDatasource.deleteBuyer();
  }

  @override
  Future<Either<Buyer, Response>> getBuyers() {
    return buyersRemoteDatasource.getBuyers();
  }

  @override
  Future<Either<CommonResponse, Response>> updateBuyer(Buyer buyer) {
    return buyersRemoteDatasource.updateBuyer(buyer);
  }
}
