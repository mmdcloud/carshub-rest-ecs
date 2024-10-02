// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'extra_service.freezed.dart';
part 'extra_service.g.dart';

@freezed
class ExtraService with _$ExtraService {
  const factory ExtraService({
    @Default("") String title,
    @Default("") String price,
    @Default("") String discount,
  }) = _ExtraService;

  factory ExtraService.fromJson(Map<String, Object?> json) =>
      _$ExtraServiceFromJson(json);
}
