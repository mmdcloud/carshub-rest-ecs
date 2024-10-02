import 'package:carshub/features/vehicleOwners/presentation/providers/vehicle_owner_form_notifier.dart';
import 'package:carshub/shared/providers/form_key_providers.dart';
import 'package:carshub/shared/utils/form_helpers/form_validators.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_outlined_button.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VehicleOwnerForm extends ConsumerWidget {
  const VehicleOwnerForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(vehicleOwnerFormKeyProvider);
    return Form(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.lightBlue[900],
              )),
          Expanded(flex: 3, child: Container()),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Owner Name',
            onChanged: (value) {
              ref
                  .read(vehicleOwnerFormNotifierProvider.notifier)
                  .updateName(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'City Name',
            onChanged: (value) {
              ref
                  .read(vehicleOwnerFormNotifierProvider.notifier)
                  .updateCity(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Date of Birth',
            onChanged: (value) {
              ref
                  .read(vehicleOwnerFormNotifierProvider.notifier)
                  .updateDob(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Gender',
            onChanged: (value) {
              ref
                  .read(vehicleOwnerFormNotifierProvider.notifier)
                  .updateGender(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Contact',
            onChanged: (value) {
              ref
                  .read(vehicleOwnerFormNotifierProvider.notifier)
                  .updateContact(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Email',
            onChanged: (value) {
              ref
                  .read(vehicleOwnerFormNotifierProvider.notifier)
                  .updateEmail(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomOutlinedButton(
            title: 'Submit',
            showLoader: false,
            enabled: true,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // ref
                //     .read(clientFormNotifierProvider.notifier)
                //     .addClient(context, ref, from);
              }
            },
          ),
        ],
      ),
    );
  }
}
