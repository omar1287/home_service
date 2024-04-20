import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/Theming/textstyle.dart';

class CreateTxt extends StatelessWidget {
  const CreateTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 30.w,right: 30.w,top: 30.h),
      child: Column(
        children: [
          Text(
            'Create new account',
            style: AppTextStyle.fontsizebold25.copyWith(
                color: ColorManager.dark_blue
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Set up your username and password you can change it later ',
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
