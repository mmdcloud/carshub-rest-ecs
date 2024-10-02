// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleOwner _$VehicleOwnerFromJson(Map<String, dynamic> json) {
  return _VehicleOwner.fromJson(json);
}

/// @nodoc
mixin _$VehicleOwner {
  String get id => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleOwnerCopyWith<VehicleOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleOwnerCopyWith<$Res> {
  factory $VehicleOwnerCopyWith(
          VehicleOwner value, $Res Function(VehicleOwner) then) =
      _$VehicleOwnerCopyWithImpl<$Res, VehicleOwner>;
  @useResult
  $Res call(
      {String id,
      String fullname,
      String city,
      String dob,
      String gender,
      String contact,
      String email});
}

/// @nodoc
class _$VehicleOwnerCopyWithImpl<$Res, $Val extends VehicleOwner>
    implements $VehicleOwnerCopyWith<$Res> {
  _$VehicleOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? city = null,
    Object? dob = null,
    Object? gender = null,
    Object? contact = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleOwnerImplCopyWith<$Res>
    implements $VehicleOwnerCopyWith<$Res> {
  factory _$$VehicleOwnerImplCopyWith(
          _$VehicleOwnerImpl value, $Res Function(_$VehicleOwnerImpl) then) =
      __$$VehicleOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fullname,
      String city,
      String dob,
      String gender,
      String contact,
      String email});
}

/// @nodoc
class __$$VehicleOwnerImplCopyWithImpl<$Res>
    extends _$VehicleOwnerCopyWithImpl<$Res, _$VehicleOwnerImpl>
    implements _$$VehicleOwnerImplCopyWith<$Res> {
  __$$VehicleOwnerImplCopyWithImpl(
      _$VehicleOwnerImpl _value, $Res Function(_$VehicleOwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? city = null,
    Object? dob = null,
    Object? gender = null,
    Object? contact = null,
    Object? email = null,
  }) {
    return _then(_$VehicleOwnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleOwnerImpl implements _VehicleOwner {
  const _$VehicleOwnerImpl(
      {this.id = "",
      this.fullname = "",
      this.city = "",
      this.dob = "",
      this.gender = "",
      this.contact = "",
      this.email = ""});

  factory _$VehicleOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleOwnerImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String fullname;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String dob;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String contact;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'VehicleOwner(id: $id, fullname: $fullname, city: $city, dob: $dob, gender: $gender, contact: $contact, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleOwnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullname, city, dob, gender, contact, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleOwnerImplCopyWith<_$VehicleOwnerImpl> get copyWith =>
      __$$VehicleOwnerImplCopyWithImpl<_$VehicleOwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleOwnerImplToJson(
      this,
    );
  }
}

abstract class _VehicleOwner implements VehicleOwner {
  const factory _VehicleOwner(
      {final String id,
      final String fullname,
      final String city,
      final String dob,
      final String gender,
      final String contact,
      final String email}) = _$VehicleOwnerImpl;

  factory _VehicleOwner.fromJson(Map<String, dynamic> json) =
      _$VehicleOwnerImpl.fromJson;

  @override
  String get id;
  @override
  String get fullname;
  @override
  String get city;
  @override
  String get dob;
  @override
  String get gender;
  @override
  String get contact;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$VehicleOwnerImplCopyWith<_$VehicleOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
