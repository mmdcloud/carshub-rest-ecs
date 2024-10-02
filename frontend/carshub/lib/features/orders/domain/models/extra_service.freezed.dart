// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extra_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExtraService _$ExtraServiceFromJson(Map<String, dynamic> json) {
  return _ExtraService.fromJson(json);
}

/// @nodoc
mixin _$ExtraService {
  String get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraServiceCopyWith<ExtraService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraServiceCopyWith<$Res> {
  factory $ExtraServiceCopyWith(
          ExtraService value, $Res Function(ExtraService) then) =
      _$ExtraServiceCopyWithImpl<$Res, ExtraService>;
  @useResult
  $Res call({String title, String price, String discount});
}

/// @nodoc
class _$ExtraServiceCopyWithImpl<$Res, $Val extends ExtraService>
    implements $ExtraServiceCopyWith<$Res> {
  _$ExtraServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? price = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraServiceImplCopyWith<$Res>
    implements $ExtraServiceCopyWith<$Res> {
  factory _$$ExtraServiceImplCopyWith(
          _$ExtraServiceImpl value, $Res Function(_$ExtraServiceImpl) then) =
      __$$ExtraServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String price, String discount});
}

/// @nodoc
class __$$ExtraServiceImplCopyWithImpl<$Res>
    extends _$ExtraServiceCopyWithImpl<$Res, _$ExtraServiceImpl>
    implements _$$ExtraServiceImplCopyWith<$Res> {
  __$$ExtraServiceImplCopyWithImpl(
      _$ExtraServiceImpl _value, $Res Function(_$ExtraServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? price = null,
    Object? discount = null,
  }) {
    return _then(_$ExtraServiceImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraServiceImpl implements _ExtraService {
  const _$ExtraServiceImpl(
      {this.title = "", this.price = "", this.discount = ""});

  factory _$ExtraServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraServiceImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey()
  final String discount;

  @override
  String toString() {
    return 'ExtraService(title: $title, price: $price, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraServiceImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, price, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraServiceImplCopyWith<_$ExtraServiceImpl> get copyWith =>
      __$$ExtraServiceImplCopyWithImpl<_$ExtraServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraServiceImplToJson(
      this,
    );
  }
}

abstract class _ExtraService implements ExtraService {
  const factory _ExtraService(
      {final String title,
      final String price,
      final String discount}) = _$ExtraServiceImpl;

  factory _ExtraService.fromJson(Map<String, dynamic> json) =
      _$ExtraServiceImpl.fromJson;

  @override
  String get title;
  @override
  String get price;
  @override
  String get discount;
  @override
  @JsonKey(ignore: true)
  _$$ExtraServiceImplCopyWith<_$ExtraServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
