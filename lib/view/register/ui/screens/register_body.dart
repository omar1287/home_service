import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/view/register/logic/register_cubit/register_cubit.dart';
import 'package:home_services/view/register/logic/register_cubit/register_state.dart';

// ignore: must_be_immutable
class RegisterBody extends StatelessWidget {


  RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterState>(builder: (context,state){
      var forKey = GlobalKey<FormState>();
      var PassWordControll = TextEditingController();
      var NameControll = TextEditingController();
      var PhoneControll = TextEditingController();
      var EmailControll = TextEditingController();
      var provide=RegisterCubit.get(context);
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              context.pop();
            },icon: const Icon(Icons.arrow_back_ios,color: ColorManager.dark_blue,),
          ),
        ),
        body: Form(
          key: forKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 120.h, left: 20.w, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.dark_blue),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                      controller: NameControll,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'name must be not empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          labelText: 'Name',
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.dark_blue),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person,
                              color: ColorManager.dark_blue,
                            ),
                          ))),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      controller: EmailControll,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'E=Mail must be not empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          labelText: 'E-Mail',
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.dark_blue),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.email,
                              color: ColorManager.dark_blue,
                            ),
                          ))),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      controller: PassWordControll,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password must be not empty';
                        }
                        return null;
                      },
                      obscureText: provide.secuore,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.dark_blue),
                          suffixIcon: IconButton(
                            onPressed: () {
                              provide.changeSecuore();
                            },
                            icon: (provide.secuore)?const Icon(
                              Icons.visibility,
                              color: Colors.black,
                            ):const Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            ),
                          ))),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      controller: PhoneControll,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Phone must be not empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2, color: ColorManager.dark_blue)),
                          labelText: 'Phone',
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.dark_blue),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.phone_android,
                              color: ColorManager.dark_blue,
                            ),
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (forKey.currentState!.validate()) {
                            // ShopAppRegisterCubit.get(context).putReg(
                            //     Email: EmailControll.text,
                            //     Pass: PassWordControll.text,
                            //     Phone: PhoneControll.text,
                            //     Name: NameControll.text
                            //
                            //
                            // );
                            context.pushNamed(Routes.mainNav);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.dark_blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          'Register',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }, listener: (context,state){});
  }
}
