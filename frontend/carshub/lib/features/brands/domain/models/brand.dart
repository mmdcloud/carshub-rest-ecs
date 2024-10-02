// This file is "main.dart"
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    @Default("") String id,
    @Default("") String name,
    @Default("") String countryOfOrigin,
  }) = _Brand;

  factory Brand.fromJson(Map<String, Object?> json) => _$BrandFromJson(json);
}
