import 'package:carshub/features/brands/presentation/providers/brand_form_notifier.dart';
import 'package:carshub/shared/providers/form_key_providers.dart';
import 'package:carshub/shared/utils/form_helpers/form_validators.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_outlined_button.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandForm extends ConsumerWidget {
  const BrandForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(brandFormKeyProvider);
    return Form(
      key: formKey,
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
            label: 'Brand Name',
            onChanged: (value) {
              ref.read(brandFormNotifierProvider.notifier).updateName(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Country of Origin',
            onChanged: (value) {
              ref
                  .read(brandFormNotifierProvider.notifier)
                  .updateCountryOfOrigin(value);
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
