// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuyerImpl _$$BuyerImplFromJson(Map<String, dynamic> json) => _$BuyerImpl(
      id: json['id'] as String? ?? "",
      fullname: json['fullname'] as String? ?? "",
      city: json['city'] as String? ?? "",
      dob: json['dob'] as String? ?? "",
      gender: json['gender'] as String? ?? "",
      contact: json['contact'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$$BuyerImplToJson(_$BuyerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'city': instance.city,
      'dob': instance.dob,
      'gender': instance.gender,
      'contact': instance.contact,
      'email': instance.email,
    };
