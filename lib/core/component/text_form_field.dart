// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:home_services/core/Theming/colors.dart';

// ignore: must_be_immutable
class TextFormFieldComponent extends StatelessWidget {
  TextFormFieldComponent(
      {super.key,
      required this.controll,
      required this.iconData,
      required this.textValidation,required this.voidCallback,required this.obsecure});

  var controll;
  String textValidation;
  IconData iconData;
  VoidCallback voidCallback;
  bool obsecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controll,
        validator:

            (value) {
          if (value!.isEmpty) {
            return '$textValidation should be not empty';
          }
          return null;
        },
        obscureText:obsecure ,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(width: 2, color: ColorManager.maingray)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(width: 2, color: ColorManager.dark_blue)),
            labelText: textValidation,
            labelStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: ColorManager.dark_blue),
            suffixIcon: IconButton(
              color: ColorManager.dark_blue, onPressed: voidCallback, icon: Icon(iconData),

            )));
  }
}
