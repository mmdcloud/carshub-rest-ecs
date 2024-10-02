// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vehicle_owner.freezed.dart';
part 'vehicle_owner.g.dart';

@freezed
class VehicleOwner with _$VehicleOwner {
  const factory VehicleOwner({
    @Default("") String id,
    @Default("") String fullname,
    @Default("") String city,
    @Default("") String dob,
    @Default("") String gender,
    @Default("") String contact,
    @Default("") String email,
  }) = _VehicleOwner;

  factory VehicleOwner.fromJson(Map<String, Object?> json) =>
      _$VehicleOwnerFromJson(json);
}
