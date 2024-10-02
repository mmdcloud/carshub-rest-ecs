import 'package:carshub/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:carshub/features/auth/data/repositories/auth_remote_repository_impl.dart';
import 'package:carshub/shared/providers/network_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final showPasswordProvider = StateProvider.autoDispose<bool>((ref) => false);

final authRemoteDatasourceProvider =
    Provider.autoDispose<AuthRemoteDatasource>((ref) {
  return AuthRemoteDatasource(ref.watch(dioClientProvider));
});

final authRepositoryImplProvider =
    Provider.autoDispose<AuthRemoteRepositoryImpl>((ref) {
  return AuthRemoteRepositoryImpl(ref.watch(authRemoteDatasourceProvider));
});
