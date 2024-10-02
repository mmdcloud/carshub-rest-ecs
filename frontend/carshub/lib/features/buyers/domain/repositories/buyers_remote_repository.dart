import 'package:carshub/features/buyers/domain/models/buyer.dart';
import 'package:carshub/shared/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class BuyersRemoteRepository {
  Future<Either<Buyer, Response>> getBuyers();
  Future<Either<CommonResponse, Response>> addBuyer(Buyer buyer);
  Future<Either<CommonResponse, Response>> updateBuyer(Buyer buyer);
  Future<Either<CommonResponse, Response>> deleteBuyer();
}
