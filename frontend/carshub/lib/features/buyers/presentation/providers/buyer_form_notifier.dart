import 'package:carshub/features/buyers/domain/models/buyer.dart';
import 'package:carshub/features/buyers/presentation/providers/buyers_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BuyerFormNotifier extends StateNotifier<Buyer> {
  Ref ref;
  BuyerFormNotifier(this.ref) : super(const Buyer());

  void updateName(String value) {
    state = state.copyWith(
      fullname: value,
    );
  }

  void updateCity(String value) {
    state = state.copyWith(
      city: value,
    );
  }

  void updateDob(String value) {
    state = state.copyWith(
      dob: value,
    );
  }

  void updateGender(String value) {
    state = state.copyWith(
      gender: value,
    );
  }

  void updateContact(String value) {
    state = state.copyWith(
      contact: value,
    );
  }

  void updateEmail(String value) {
    state = state.copyWith(
      email: value,
    );
  }

  void addBuyer() async {
    var response = await ref.read(buyersRepositoryImplProvider).addBuyer(state);
    response.fold((l) => null, (r) => null);
  }

  void updateBuyer() async {
    var response =
        await ref.read(buyersRepositoryImplProvider).updateBuyer(state);
    response.fold((l) => null, (r) => null);
  }
}

final buyerFormNotifierProvider =
    StateNotifierProvider.autoDispose<BuyerFormNotifier, Buyer>(
        (ref) => BuyerFormNotifier(ref));
