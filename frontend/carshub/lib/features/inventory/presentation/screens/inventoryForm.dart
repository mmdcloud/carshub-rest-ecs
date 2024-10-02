import 'package:carshub/features/inventory/presentation/providers/inventory_form_notifier.dart';
import 'package:carshub/shared/utils/form_helpers/form_validators.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_switch.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InventoryForm extends ConsumerWidget {
  const InventoryForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlue[900],
            )),
        Expanded(flex: 3, child: Container()),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Select Brand',
          onChanged: (value) {
            ref.read(inventoryFormNotifierProvider.notifier).updateBrand(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Select Model',
          onChanged: (value) {
            ref.read(inventoryFormNotifierProvider.notifier).updateModel(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Select Owner',
          onChanged: (value) {
            ref.read(inventoryFormNotifierProvider.notifier).updateOwner(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Price',
          onChanged: (value) {
            ref.read(inventoryFormNotifierProvider.notifier).updatePrice(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Color',
          onChanged: (value) {
            ref.read(inventoryFormNotifierProvider.notifier).updateColor(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Registration Year',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateRegistrationYear(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Passing Code',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updatePassingCode(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Kms Driven',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateKmsDriven(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Engine Capacity',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateEngineCapacity(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Variant',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateVariant(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Fuel Type',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateFuelType(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Enter Transmission',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateTransmission(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Insurance',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateInsurance(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Ownership',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateOwnership(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Status',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateStatus(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Airbags',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateAirbags(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateIsofix(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref.read(inventoryFormNotifierProvider.notifier).updateAbs(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateCentralLocking(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref.read(inventoryFormNotifierProvider.notifier).updateEbd(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateTpms(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateHillHoldControl(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateHillDecentControl(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateTractionControl(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateRearDefogger(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateFrontFogLights(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateFrontFogLights(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Instrument Panel Type',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateInstrumentPanelType(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateBluetoothCompatibility(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateSteeringMountedControls(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateAudioSystem(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateAirConditioner(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updatePowerWindowsFront(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Steering Wheel Material',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateSteeringWheelMaterial(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Parking Assist Rear',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateSteeringWheelMaterial(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updatePowerOutlet12V(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateSteeringAdjustment(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateSeatUpholstery(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updatePushButtonStart(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateCruiseControl(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateVentillatedSeatsFront(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateRearAC(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Displacement',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateDisplacement(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Cylinders',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateCylinders(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'No of Gears',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateGearBoxNumberOfGears(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'No of Disk Breaks',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateNoOfDiskBreaks(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Ground Clearance',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateGroundClearance(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Seating Capacity',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateSeatingCapacity(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Bootspace',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateBootspace(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Width (In MM)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateWidthInMM(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Length (In MM)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateLengthInMM(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Wheelbase (In MM)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateWheelBaseInMM(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Fuel Tank Capacity',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateFuelTankCapacity(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Max Power (In BHP)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateMaxPowerInBHP(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Max Power (In RPM)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateMaxPowerInRPM(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Emission Standard',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateEmissionStandard(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Max Torque (In NM)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateMaxTorqueInNM(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Headlamp Lens Type',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateHeadlampLensType(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Headlamp Bulb Type (High Beam)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateHeadlampBulbTypeHighBeam(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Headlamp Bulb Type (Low Beam)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateHeadlampBulbTypeLowBeam(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Rim Type (Front)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateRimTypeFront(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomTextFormField(
          showPrefixIcon: true,
          label: 'Rim Type (Rear)',
          onChanged: (value) {
            ref
                .read(inventoryFormNotifierProvider.notifier)
                .updateRimTypeRear(value);
          },
          inputType: TextInputType.name,
          validator: (value) => FormValidators.stringRequiredValidator(value),
        ),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateDayrimeRunningLights(value);
            }),
        SizedBox(
          height: 18.h,
        ),
        CustomSwitch(
            value: false,
            onChanged: (value) {
              ref
                  .read(inventoryFormNotifierProvider.notifier)
                  .updateElectricallyFoldableMirros(value);
            }),
      ],
    );
  }
}
