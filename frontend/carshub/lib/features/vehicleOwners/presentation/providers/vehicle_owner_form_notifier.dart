import 'package:carshub/features/vehicleOwners/domain/models/vehicle_owner.dart';
import 'package:carshub/features/vehicleOwners/presentation/providers/vehicle_owner_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VehicleOwnerFormNotifier extends StateNotifier<VehicleOwner> {
  Ref ref;
  VehicleOwnerFormNotifier(this.ref) : super(const VehicleOwner());

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

  void addOwner() async {
    var response =
        await ref.read(vehicleOwnersRepositoryImplProvider).addOwner(state);
    response.fold((l) => null, (r) => null);
  }

  void updateOwner() async {
    var response =
        await ref.read(vehicleOwnersRepositoryImplProvider).updateOwner(state);
    response.fold((l) => null, (r) => null);
  }
}

final vehicleOwnerFormNotifierProvider =
    StateNotifierProvider.autoDispose<VehicleOwnerFormNotifier, VehicleOwner>(
        (ref) => VehicleOwnerFormNotifier(ref));
