import 'package:flutter/material.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/Theming/textstyle.dart';

class NavToRegister extends StatelessWidget {
  const NavToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('didn\'t have any account?',style: AppTextStyle.fontsizebold16.copyWith(
          color: ColorManager.maingray
        ),),
        TextButton(onPressed: (){
          context.pushNamed(Routes.Register);
        }, child:  Text('SignUp',style: AppTextStyle.fontsizebold16.copyWith(
          color: ColorManager.dark_blue
        ),))
      ],
    );
  }
}
