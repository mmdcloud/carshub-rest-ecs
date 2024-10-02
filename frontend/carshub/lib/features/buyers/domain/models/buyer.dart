// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'buyer.freezed.dart';
part 'buyer.g.dart';

@freezed
class Buyer with _$Buyer {
  const factory Buyer({
    @Default("") String id,
    @Default("") String fullname,
    @Default("") String city,
    @Default("") String dob,
    @Default("") String gender,
    @Default("") String contact,
    @Default("") String email,
  }) = _Buyer;

  factory Buyer.fromJson(Map<String, Object?> json) => _$BuyerFromJson(json);
}
