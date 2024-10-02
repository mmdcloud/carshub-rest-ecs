import 'package:carshub/features/orders/domain/models/order.dart';
import 'package:carshub/features/orders/presentation/providers/orders_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderFormNotifier extends StateNotifier<Order> {
  Ref ref;
  OrderFormNotifier(this.ref) : super(const Order());

  void updateDate(String value) {
    state = state.copyWith(
      date: value,
    );
  }

  void updateBuyer(String value) {
    state = state.copyWith(
      buyer: value,
    );
  }

  void updateTotalAmount(String value) {
    state = state.copyWith(
      totalAmount: value,
    );
  }

  void updateDiscount(String value) {
    state = state.copyWith(
      discount: value,
    );
  }

  void updateInventory(String value) {
    state = state.copyWith(
      inventory: value,
    );
  }

  void addOrder() async {
    var response = await ref.read(ordersRepositoryImplProvider).addOrder(state);
    response.fold((l) => null, (r) => null);
  }

  void updateOrder() async {
    var response =
        await ref.read(ordersRepositoryImplProvider).updateOrder(state);
    response.fold((l) => null, (r) => null);
  }
}

final orderFormNotifierProvider =
    StateNotifierProvider.autoDispose<OrderFormNotifier, Order>(
        (ref) => OrderFormNotifier(ref));
