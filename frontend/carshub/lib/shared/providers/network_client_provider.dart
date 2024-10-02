import 'package:carshub/shared/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioInstanceProvider = Provider.autoDispose<Dio>((ref) {
  return Dio();
});

final dioClientProvider = Provider.autoDispose<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});
