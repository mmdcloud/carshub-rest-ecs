import 'package:carshub/shared/providers/bottom_navbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavbar extends ConsumerWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(bottomNavbarIndexProvider);
    return BottomNavigationBar(
      showUnselectedLabels: true,
      selectedLabelStyle:
          TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
      unselectedLabelStyle:
          TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
      showSelectedLabels: true,
      selectedIconTheme: const IconThemeData(color: Colors.red),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: Image.asset(
            'assets/images/writing.png',
            height: 25.h,
          ),
          icon: Image.asset(
            'assets/images/writing.png',
            color: Colors.grey,
            height: 25.h,
          ),
          label: 'Requests',
        ),
        BottomNavigationBarItem(
          activeIcon: Image.asset(
            'assets/images/clients.png',
            height: 25.h,
          ),
          icon: Image.asset(
            'assets/images/clients.png',
            color: Colors.grey,
            height: 25.h,
          ),
          label: 'Clients',
        ),
        BottomNavigationBarItem(
          activeIcon: Image.asset(
            'assets/images/bell.png',
            height: 25.h,
          ),
          icon: Image.asset(
            'assets/images/bell.png',
            color: Colors.grey,
            height: 25.h,
          ),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          activeIcon: Image.asset(
            'assets/images/account.png',
            height: 25.h,
          ),
          icon: Image.asset(
            'assets/images/account.png',
            color: Colors.grey,
            height: 25.h,
          ),
          label: 'Account',
        ),
      ],
      currentIndex: state,
      onTap: (value) {
        ref.read(bottomNavbarIndexProvider.notifier).state = value;
      },
    );
  }
}
