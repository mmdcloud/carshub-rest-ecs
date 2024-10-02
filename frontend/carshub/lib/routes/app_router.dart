import 'package:carshub/features/auth/presentation/screens/login.dart';
import 'package:carshub/features/brands/presentation/screens/brandForm.dart';
import 'package:carshub/features/brands/presentation/screens/brands.dart';
import 'package:carshub/features/home/home.dart';
import 'package:carshub/features/inventory/presentation/screens/inventory.dart';
import 'package:carshub/features/inventory/presentation/screens/inventoryForm.dart';
import 'package:carshub/features/splash/splash.dart';
import 'package:go_router/go_router.dart';
import '../features/buyers/presentation/screens/buyerForm.dart';
import '../features/orders/presentation/screens/orderForm.dart';
import '../features/orders/presentation/screens/orders.dart';
import '../features/vehicleModels/presentation/screens/modelForm.dart';
import '../features/vehicleModels/presentation/screens/models.dart';
import '../features/vehicleOwners/presentation/screens/vehicleOwnerForm.dart';

// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const DashboardScreen(),
    ),
    // GoRoute(path: '/brands', routes: [
    //   GoRoute(
    //     path: '/',
    //     builder: (context, state) => const Brands(),
    //   ),
    //   GoRoute(
    //     path: '/brandForm',
    //     builder: (context, state) => const BrandForm(),
    //   ),
    // ]),
    // GoRoute(path: '/models', routes: [
    //   GoRoute(
    //     path: '/',
    //     builder: (context, state) => const Models(),
    //   ),
    //   GoRoute(
    //     path: '/modelForm',
    //     builder: (context, state) => const ModelForm(),
    //   ),
    // ]),
    // GoRoute(path: '/orders', routes: [
    //   GoRoute(
    //     path: '/',
    //     builder: (context, state) => const Orders(),
    //   ),
    //   GoRoute(
    //     path: '/orderForm',
    //     builder: (context, state) => const OrderForm(),
    //   ),
    //   GoRoute(
    //     path: '/buyerForm',
    //     builder: (context, state) => const BuyerForm(),
    //   ),
    // ]),
    // GoRoute(path: '/inventory', routes: [
    //   GoRoute(
    //     path: '/',
    //     builder: (context, state) => const Inventory(),
    //   ),
    //   GoRoute(
    //     path: '/inventoryForm',
    //     builder: (context, state) => const InventoryForm(),
    //   ),
    //   GoRoute(
    //     path: '/vehicleOwnerForm',
    //     builder: (context, state) => const VehicleOwnerForm(),
    //   ),
    // ]),
  ],
);
