import 'package:carshub/features/vehicleModels/domain/models/vehicle_model.dart';
import 'package:carshub/features/vehicleModels/presentation/providers/vehicle_model_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VehicleModelFormNotifier extends StateNotifier<VehicleModel> {
  Ref ref;
  VehicleModelFormNotifier(this.ref) : super(const VehicleModel());

  void updateName(String value) {
    state = state.copyWith(
      name: value,
    );
  }

  void addModel() async {
    var response =
        await ref.read(vehicleModelsRepositoryImplProvider).addModel(state);
    response.fold((l) => null, (r) => null);
  }

  void updateModel() async {
    var response =
        await ref.read(vehicleModelsRepositoryImplProvider).updateModel(state);
    response.fold((l) => null, (r) => null);
  }
}

final vehicleModelFormNotifierProvider =
    StateNotifierProvider.autoDispose<VehicleModelFormNotifier, VehicleModel>(
        (ref) => VehicleModelFormNotifier(ref));
