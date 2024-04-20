import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/view/login/logic/Login_cubit/login_cubit.dart';
import 'package:home_services/view/login/logic/Login_cubit/login_state.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<LoginCubit, LoginState>(
        builder: (context, state) {
          var EmailControll = TextEditingController();
          var PassWordControll = TextEditingController();
          var formkey = GlobalKey<FormState>();
          var provide=LoginCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  color: ColorManager.dark_blue, fontSize: 40),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Login now to browse our hot offers',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: ColorManager.maingray),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        TextFormField(
                            controller: EmailControll,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'E-Mail should be not empty';
                              }
                              return null;
                            },
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: ColorManager.maingray)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: ColorManager.dark_blue)),
                                labelText: 'E-Mail',
                                labelStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorManager.dark_blue),
                                suffix: const Icon(
                                  Icons.email,
                                  color: ColorManager.dark_blue,
                                ))),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is short';
                              }
                              return null;
                            },
                            obscureText: provide.secuore,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: ColorManager.dark_blue)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: ColorManager.dark_blue)),
                                labelText: 'Password',
                                labelStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorManager.dark_blue),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    provide.changeSecuore();
                                  },
                                  icon:  (provide.secuore)?const Icon(
                                    Icons.visibility,
                                    color: ColorManager.dark_blue,
                                  ):const Icon(
                                    Icons.visibility_off,
                                    color: ColorManager.dark_blue,
                                  ),
                                ))),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                          child: SizedBox(
                            width: 350.w,
                            height: 50.h,
                            child: ElevatedButton(
                              onPressed: () async {
                                if (formkey.currentState!.validate()) {
                                  context.pushNamed(Routes.mainNav);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorManager.dark_blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                'Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "If you don't have account?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                            context.pushNamed(Routes.Register);
                          },
                          child: Text(
                            'Register',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: ColorManager.dark_blue,
                                    fontSize: 20),
                          ),
                        )
                      ],
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
