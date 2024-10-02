// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String? ?? "",
      date: json['date'] as String? ?? "",
      buyer: json['buyer'] as String? ?? "",
      totalAmount: json['totalAmount'] as String? ?? "",
      discount: json['discount'] as String? ?? "",
      inventory: json['inventory'] as String? ?? "",
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'buyer': instance.buyer,
      'totalAmount': instance.totalAmount,
      'discount': instance.discount,
      'inventory': instance.inventory,
    };
