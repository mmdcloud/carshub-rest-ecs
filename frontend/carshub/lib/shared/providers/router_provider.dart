import 'package:carshub/routes/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider.autoDispose<GoRouter>((ref) {
  return goRouter;
});
