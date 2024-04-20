import 'package:flutter/material.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/Theming/textstyle.dart';

class NavToLogin extends StatelessWidget {
  const NavToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('Already have an account',style: AppTextStyle.fontsizebold16.copyWith(
            color: ColorManager.maingray
        ),),
        TextButton(onPressed: (){
          context.pushNamed(Routes.Login);
        }, child:  Text('SignIn',style: AppTextStyle.fontsizebold16.copyWith(
            color: ColorManager.dark_blue
        ),))
      ],
    );
  }
}