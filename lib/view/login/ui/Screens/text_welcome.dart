import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/Theming/textstyle.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 30.w,right: 30.w,top: 150.h),
      child: Column(
        children: [
          Text(
            'Welcome Back',
            style: AppTextStyle.fontsizebold25.copyWith(
              color: ColorManager.dark_blue
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'login to your account using mobile number.  ',
            style: AppTextStyle.fontsizebold16.copyWith(
              color: ColorManager.maingray
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}