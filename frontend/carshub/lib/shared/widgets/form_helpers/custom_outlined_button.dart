import 'package:carshub/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color? titleColor;
  final Color? backgroundColor;
  final bool enabled;
  final double? height;
  final double? width;
  final bool showLoader;
  const CustomOutlinedButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.titleColor,
      this.backgroundColor,
      this.enabled = false,
      this.height,
      this.width,
      this.showLoader = false});

  @override
  Widget build(BuildContext context) {
    return showLoader
        ? Center(
            child: SizedBox(
            child: CircularProgressIndicator(
              color: AppTheme().appColor.primaryColor,
            ),
          ))
        : OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
            ),
            onPressed: enabled ? onPressed : null,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white, fontSize: 12.sp),
            ));
  }
}
