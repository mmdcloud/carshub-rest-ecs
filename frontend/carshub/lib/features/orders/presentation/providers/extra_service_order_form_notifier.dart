import 'package:carshub/features/orders/domain/models/extra_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExtraServiceOrderFormNotifier extends StateNotifier<ExtraService> {
  ExtraServiceOrderFormNotifier() : super(const ExtraService());

  void updateTitle(String value) {
    state = state.copyWith(
      title: value,
    );
  }

  void updatePrice(String value) {
    state = state.copyWith(
      price: value,
    );
  }

  void updateDiscount(String value) {
    state = state.copyWith(
      discount: value,
    );
  }
}

final extraServiceFormNotifierProvider = StateNotifierProvider.autoDispose<
    ExtraServiceOrderFormNotifier,
    ExtraService>((ref) => ExtraServiceOrderFormNotifier());
