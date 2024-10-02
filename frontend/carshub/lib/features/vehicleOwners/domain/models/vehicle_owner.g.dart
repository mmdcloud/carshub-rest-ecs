// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleOwnerImpl _$$VehicleOwnerImplFromJson(Map<String, dynamic> json) =>
    _$VehicleOwnerImpl(
      id: json['id'] as String? ?? "",
      fullname: json['fullname'] as String? ?? "",
      city: json['city'] as String? ?? "",
      dob: json['dob'] as String? ?? "",
      gender: json['gender'] as String? ?? "",
      contact: json['contact'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$$VehicleOwnerImplToJson(_$VehicleOwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'city': instance.city,
      'dob': instance.dob,
      'gender': instance.gender,
      'contact': instance.contact,
      'email': instance.email,
    };
