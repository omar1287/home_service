import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/component/elevated_buttom.dart';
import 'package:home_services/core/component/text_form_field.dart';
import 'package:home_services/view/register/logic/register_cubit/register_cubit.dart';
import 'package:home_services/view/register/logic/register_cubit/register_state.dart';
import 'package:home_services/view/register/ui/screens/Create_txt.dart';
import 'package:home_services/view/register/ui/screens/custom_password.dart';
import 'package:home_services/view/register/ui/screens/nav_to_login.dart';

// ignore: must_be_immutable
class RegisterBody extends StatelessWidget {
  RegisterBody({super.key});
  var PasswordControll = TextEditingController();
  var ConfirmPasswordControll = TextEditingController();
  var NameControll = TextEditingController();
  var PhoneControll = TextEditingController();
  var EmailControll = TextEditingController();
  var forKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
        builder: (context, state) {


          var provide = RegisterCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: ColorManager.dark_blue,
                ),
              ),
            ),
            body: Form(
              key: forKey,
              child: SingleChildScrollView(
                child: Padding(
                    padding:
                        EdgeInsets.only(top: 5.h, left: 20.w, right: 20.w),
                    child: Column(
                      children: [
                        const CreateTxt(),
                        SizedBox(
                          height: 30.h,
                        ),
                        TextFormFieldComponent(
                            controll: NameControll,
                            iconData: Icons.person,
                            textValidation: 'UserName',
                            voidCallback: () {},
                            obsecure: false),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormFieldComponent(
                            controll: EmailControll,
                            iconData: Icons.email_outlined,
                            textValidation: 'E-Mail',
                            voidCallback: () {},
                            obsecure: false),
                        SizedBox(
                          height: 20.h,
                        ),
                       CustomPassword(passwordControl: PasswordControll),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormFieldComponent(
                            controll: ConfirmPasswordControll,
                            iconData:  (provide.secuore2)?Icons.visibility:Icons.visibility_off,
                            textValidation: 'Confirm Password',
                            voidCallback: () {
                              provide.changeSecuore2();
                            },
                            obsecure: provide.secuore2),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormFieldComponent(
                            controll: PhoneControll,
                            iconData: Icons.person,
                            textValidation: 'Phone',
                            voidCallback: () {},
                            obsecure: false),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50.h,
                            child: ElvatedButtonComponent(txt: 'Sign Up', voidCallback: (){
                              if (forKey.currentState!.validate()) {
                                context.pushNamed(Routes.mainNav);
                              }
                            }
                            ),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: NavToLogin(),
                        ),
                      ],
                    )),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}