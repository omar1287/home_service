import 'package:flutter/material.dart';
import 'package:home_services/core/Theming/colors.dart';

// ignore: must_be_immutable
class ElvatedButtonComponent extends StatelessWidget {
  ElvatedButtonComponent(
      {super.key, required this.txt, required this.voidCallback});

  String txt;
  VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: voidCallback,
      // () async {
      //   // if (formkey.currentState!.validate()) {
      //   //   context.pushNamed(Routes.home);
      //   }
      // },
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.dark_blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(
        txt,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}