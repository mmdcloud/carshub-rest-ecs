// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    @Default("") String id,
    @Default("") String date,
    @Default("") String buyer,
    @Default("") String totalAmount,
    @Default("") String discount,
    @Default("") String inventory,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);
}
