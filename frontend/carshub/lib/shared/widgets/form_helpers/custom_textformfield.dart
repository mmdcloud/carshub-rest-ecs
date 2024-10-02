import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../themes/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  final double? height;
  final double? width;
  final String label;
  final String? initialValue;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? maxlength;
  final String? errorText;
  final bool? enabled;
  final Widget? suffixIcon;
  final VoidCallback? onEditingComplete;
  final bool obscureText;
  final TextInputType inputType;
  final Function(String)? onChanged;
  final Function()? onTap;
  final FormFieldValidator<String>? validator;
  final bool showPrefixIcon;
  final bool autofocus;
  final bool showSuffixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextFormField(
      {super.key,
      required this.label,
      this.height,
      this.width,
      this.controller,
      this.focusNode,
      this.maxlength,
      this.errorText,
      this.suffixIcon,
      this.autofocus = false,
      this.onTap,
      this.onEditingComplete,
      this.enabled,
      this.initialValue,
      this.inputType = TextInputType.text,
      this.obscureText = false,
      this.onChanged,
      this.validator,
      this.showPrefixIcon = false,
      this.showSuffixIcon = false,
      this.suffix,
      this.prefix,
      this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      maxLength: maxlength,
      focusNode: focusNode,
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      obscureText: obscureText,
      initialValue: initialValue,
      autofocus: autofocus,
      autocorrect: false,
      keyboardType: inputType,
      validator: validator,
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
          labelText: label,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          isDense: true,
          labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppTheme().appColor.primaryColor, fontSize: 12.sp),
          prefixIcon: showPrefixIcon ? prefix : null,
          prefixIconColor: AppTheme().appColor.primaryColor,
          suffixIcon: showSuffixIcon ? suffix : null,
          suffixIconColor: AppTheme().appColor.primaryColor,
          errorStyle: const TextStyle(fontWeight: FontWeight.bold),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: AppTheme().appColor.warningColor!,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: AppTheme().appColor.primaryColor!,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: AppTheme().appColor.primaryColor!,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: AppTheme().appColor.primaryColor!,
              ))),
    );
  }
}
