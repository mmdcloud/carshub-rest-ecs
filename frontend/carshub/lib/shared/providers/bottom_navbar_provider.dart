import 'package:carshub/features/brands/presentation/screens/brands.dart';
import 'package:carshub/features/inventory/presentation/screens/inventory.dart';
import 'package:carshub/features/orders/presentation/screens/orders.dart';
import 'package:carshub/features/vehicleModels/presentation/screens/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavbarIndexProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});

final bottomNavbarPagesProvider = Provider.autoDispose<List<Widget>>((ref) {
  return [const Orders(), const Inventory(), const Brands(), const Models()];
});
