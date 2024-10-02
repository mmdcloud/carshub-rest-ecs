import 'package:carshub/shared/providers/bottom_navbar_provider.dart';
import 'package:carshub/shared/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(bottomNavbarIndexProvider);
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      body: IndexedStack(
          index: ref.watch(bottomNavbarIndexProvider.notifier).state,
          children: ref.watch(bottomNavbarPagesProvider)),
    );
  }
}
