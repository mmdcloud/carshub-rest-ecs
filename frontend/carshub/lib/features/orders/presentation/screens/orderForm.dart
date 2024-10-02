import 'package:carshub/features/orders/presentation/providers/order_form_notifier.dart';
import 'package:carshub/shared/providers/form_key_providers.dart';
import 'package:carshub/shared/utils/form_helpers/form_validators.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_outlined_button.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderForm extends ConsumerWidget {
  const OrderForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(orderFormKeyProvider);
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
            label: 'Date',
            onChanged: (value) {
              ref.read(orderFormNotifierProvider.notifier).updateDate(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Buyer',
            onChanged: (value) {
              ref.read(orderFormNotifierProvider.notifier).updateBuyer(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Total Amount',
            onChanged: (value) {
              ref
                  .read(orderFormNotifierProvider.notifier)
                  .updateTotalAmount(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Discount',
            onChanged: (value) {
              ref
                  .read(orderFormNotifierProvider.notifier)
                  .updateDiscount(value);
            },
            inputType: TextInputType.name,
            validator: (value) => FormValidators.stringRequiredValidator(value),
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomTextFormField(
            showPrefixIcon: true,
            label: 'Inventory',
            onChanged: (value) {
              ref
                  .read(orderFormNotifierProvider.notifier)
                  .updateInventory(value);
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
