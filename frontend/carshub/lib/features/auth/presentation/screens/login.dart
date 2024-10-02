import 'package:carshub/features/auth/presentation/providers/auth_provider.dart';
import 'package:carshub/features/auth/presentation/providers/login_form_notifier.dart';
import 'package:carshub/shared/providers/form_key_providers.dart';
import 'package:carshub/shared/utils/form_helpers/form_validators.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_outlined_button.dart';
import 'package:carshub/shared/widgets/form_helpers/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showPassword = ref.watch(showPasswordProvider);
    final formKey = ref.watch(authFormKeyProvider);
    return Scaffold(
      body: Form(
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
              prefix: const Icon(Icons.phone),
              label: "Mobile number",
              onChanged: (value) {
                ref
                    .read(loginFormNotifierProvider.notifier)
                    .updateMobile(value);
              },
              inputType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              validator: (value) => FormValidators.mobileNumberValidator(value),
            ),
            SizedBox(
              height: 18.h,
            ),
            CustomTextFormField(
              showPrefixIcon: true,
              showSuffixIcon: true,
              prefix: const Icon(Icons.password),
              suffix: InkWell(
                  onTap: () {
                    ref
                        .read(showPasswordProvider.notifier)
                        .update((state) => !state);
                  },
                  child: showPassword
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility_rounded)),
              label: 'Password',
              obscureText: !showPassword,
              onChanged: (value) {
                ref
                    .read(loginFormNotifierProvider.notifier)
                    .updatePassword(value);
              },
              inputType: TextInputType.emailAddress,
              validator: (value) => FormValidators.passwordValidator(value),
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
                  ref.read(loginFormNotifierProvider.notifier).login();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
