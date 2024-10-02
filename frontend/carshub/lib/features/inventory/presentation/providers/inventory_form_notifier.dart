import 'package:carshub/features/inventory/domain/models/inventory.dart';
import 'package:carshub/features/inventory/presentation/providers/inventory_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InventoryFormNotifier extends StateNotifier<Inventory> {
  Ref ref;
  InventoryFormNotifier(this.ref) : super(const Inventory());

  void updateBrand(String value) {
    state = state.copyWith(
      brand: value,
    );
  }

  void updateModel(String value) {
    state = state.copyWith(
      model: value,
    );
  }

  void updateOwner(String value) {
    state = state.copyWith(
      owner: value,
    );
  }

  void updatePrice(String value) {
    state = state.copyWith(
      price: value,
    );
  }

  void updateColor(String value) {
    state = state.copyWith(
      color: value,
    );
  }

  void updateRegistrationYear(String value) {
    state = state.copyWith(
      registrationYear: value,
    );
  }

  void updatePassingCode(String value) {
    state = state.copyWith(
      passingCode: value,
    );
  }

  void updateKmsDriven(String value) {
    state = state.copyWith(
      kmsDriven: value,
    );
  }

  void updateEngineCapacity(String value) {
    state = state.copyWith(
      engineCapacity: value,
    );
  }

  void updateVariant(String value) {
    state = state.copyWith(
      variant: value,
    );
  }

  void updateFuelType(String value) {
    state = state.copyWith(
      fueltype: value,
    );
  }

  void updateTransmission(String value) {
    state = state.copyWith(
      transmission: value,
    );
  }

  void updateInsurance(String value) {
    state = state.copyWith(
      insurance: value,
    );
  }

  void updateOwnership(String value) {
    state = state.copyWith(
      ownership: value,
    );
  }

  void updateStatus(String value) {
    state = state.copyWith(
      status: value,
    );
  }

  void updateAirbags(String value) {
    state = state.copyWith(
      airbags: value,
    );
  }

  void updateIsofix(bool value) {
    state = state.copyWith(
      isofix: value,
    );
  }

  void updateAbs(bool value) {
    state = state.copyWith(
      abs: value,
    );
  }

  void updateCentralLocking(bool value) {
    state = state.copyWith(
      centralLocking: value,
    );
  }

  void updateEbd(bool value) {
    state = state.copyWith(
      ebd: value,
    );
  }

  void updateTpms(bool value) {
    state = state.copyWith(
      tpms: value,
    );
  }

  void updateHillHoldControl(bool value) {
    state = state.copyWith(
      hillHoldControl: value,
    );
  }

  void updateHillDecentControl(bool value) {
    state = state.copyWith(
      hillDecentControl: value,
    );
  }

  void updateTractionControl(bool value) {
    state = state.copyWith(
      tractionControl: value,
    );
  }

  void updateRearDefogger(bool value) {
    state = state.copyWith(
      rearDefogger: value,
    );
  }

  void updateFrontFogLights(bool value) {
    state = state.copyWith(
      frontFogLights: value,
    );
  }

  void updateInstrumentPanelType(String value) {
    state = state.copyWith(
      instrumentPanelType: value,
    );
  }

  void updateBluetoothCompatibility(bool value) {
    state = state.copyWith(
      bluetoothCompatibility: value,
    );
  }

  void updateSteeringMountedControls(bool value) {
    state = state.copyWith(
      steeringMountedControls: value,
    );
  }

  void updateAudioSystem(bool value) {
    state = state.copyWith(
      audioSystem: value,
    );
  }

  void updateAirConditioner(bool value) {
    state = state.copyWith(
      airConditioner: value,
    );
  }

  void updatePowerWindowsFront(bool value) {
    state = state.copyWith(
      powerWindowsFront: value,
    );
  }

  void updateSteeringWheelMaterial(String value) {
    state = state.copyWith(
      steeringWheelMaterial: value,
    );
  }

  void updateParkingAssistRear(String value) {
    state = state.copyWith(
      parkingAssistRear: value,
    );
  }

  void updatePowerOutlet12V(bool value) {
    state = state.copyWith(
      powerOutlet12V: value,
    );
  }

  void updateSteeringAdjustment(bool value) {
    state = state.copyWith(
      steeringAdjustment: value,
    );
  }

  void updateSeatUpholstery(bool value) {
    state = state.copyWith(
      seatUpholstery: value,
    );
  }

  void updatePushButtonStart(bool value) {
    state = state.copyWith(
      pushButtonStart: value,
    );
  }

  void updateCruiseControl(bool value) {
    state = state.copyWith(
      cruiseControl: value,
    );
  }

  void updateVentillatedSeatsFront(bool value) {
    state = state.copyWith(
      ventillatedSeatsFront: value,
    );
  }

  void updateRearAC(bool value) {
    state = state.copyWith(
      rearAC: value,
    );
  }

  void updateDisplacement(String value) {
    state = state.copyWith(
      displacement: value,
    );
  }

  void updateCylinders(String value) {
    state = state.copyWith(
      cylinders: value,
    );
  }

  void updateGearBoxNumberOfGears(String value) {
    state = state.copyWith(
      gearBoxNumberOfGears: value,
    );
  }

  void updateNoOfDiskBreaks(String value) {
    state = state.copyWith(
      noOfDiskBreaks: value,
    );
  }

  void updateGroundClearance(String value) {
    state = state.copyWith(
      groundClearance: value,
    );
  }

  void updateSeatingCapacity(String value) {
    state = state.copyWith(
      seatingCapacity: value,
    );
  }

  void updateBootspace(String value) {
    state = state.copyWith(
      bootspace: value,
    );
  }

  void updateWidthInMM(String value) {
    state = state.copyWith(
      widthInMM: value,
    );
  }

  void updateLengthInMM(String value) {
    state = state.copyWith(
      lengthInMM: value,
    );
  }

  void updateWheelBaseInMM(String value) {
    state = state.copyWith(
      wheelBaseInMM: value,
    );
  }

  void updateFuelTankCapacity(String value) {
    state = state.copyWith(
      fuelTankCapacity: value,
    );
  }

  void updateMaxPowerInBHP(String value) {
    state = state.copyWith(
      maxPowerInBHP: value,
    );
  }

  void updateMaxPowerInRPM(String value) {
    state = state.copyWith(
      maxPowerInRPM: value,
    );
  }

  void updateEmissionStandard(String value) {
    state = state.copyWith(
      emissionStandard: value,
    );
  }

  void updateMaxTorqueInNM(String value) {
    state = state.copyWith(
      maxTorqueInNM: value,
    );
  }

  void updateHeadlampLensType(String value) {
    state = state.copyWith(
      headlampLensType: value,
    );
  }

  void updateHeadlampBulbTypeHighBeam(String value) {
    state = state.copyWith(
      headlampBulbTypeHighBeam: value,
    );
  }

  void updateHeadlampBulbTypeLowBeam(String value) {
    state = state.copyWith(
      headlampBulbTypeLowBeam: value,
    );
  }

  void updateRimTypeFront(String value) {
    state = state.copyWith(
      rimTypeFront: value,
    );
  }

  void updateRimTypeRear(String value) {
    state = state.copyWith(
      rimTypeRear: value,
    );
  }

  void updateDayrimeRunningLights(bool value) {
    state = state.copyWith(
      dayrimeRunningLights: value,
    );
  }

  void updateElectricallyFoldableMirros(bool value) {
    state = state.copyWith(
      electricallyFoldableMirros: value,
    );
  }

  void addInventory() async {
    var response =
        await ref.read(inventoryRepositoryImplProvider).addInventory(state);
    response.fold((l) => null, (r) => null);
  }

  void updateInventory() async {
    var response =
        await ref.read(inventoryRepositoryImplProvider).updateInventory(state);
    response.fold((l) => null, (r) => null);
  }
}

final inventoryFormNotifierProvider =
    StateNotifierProvider.autoDispose<InventoryFormNotifier, Inventory>(
        (ref) => InventoryFormNotifier(ref));
