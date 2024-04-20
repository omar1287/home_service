import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/Theming/textstyle.dart';
import 'package:home_services/core/component/elevated_buttom.dart';
import 'package:home_services/core/component/text_form_field.dart';
import 'package:home_services/view/login/logic/Login_cubit/login_cubit.dart';
import 'package:home_services/view/login/logic/Login_cubit/login_state.dart';
import 'package:home_services/view/login/ui/Screens/didnt_have_account.dart';
import 'package:home_services/view/login/ui/Screens/text_welcome.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});

  var mailControll = TextEditingController();
  var passControll = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
        builder: (context, state) {
          var provide = LoginCubit.get(context);
          return Scaffold(
            body: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const WelcomeText(),
                          SizedBox(height: 60.h),
                          TextFormFieldComponent(
                            controll: mailControll,
                            iconData: Icons.email_outlined,
                            textValidation: 'E_Mail',
                            voidCallback: () {},
                            obsecure: false,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormFieldComponent(
                            controll: passControll,
                            iconData: (provide.secuore)
                                ? Icons.visibility
                                : Icons.visibility_off,
                            textValidation: 'Password',
                            voidCallback: () {
                              provide.changeSecuore();
                            },
                            obsecure: provide.secuore,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forget Password',
                                style: AppTextStyle.fontsizebold16
                                    .copyWith(color: ColorManager.dark_blue),
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50.h,
                              width: double.infinity,
                              child: ElvatedButtonComponent(
                                  txt: 'Login',
                                  voidCallback: () {
                                    if (formKey.currentState!.validate()) {
                                      context.pushNamed(Routes.mainNav);
                                    }
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 20.w),
                            child: const NavToRegister(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}