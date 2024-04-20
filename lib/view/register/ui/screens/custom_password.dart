
import 'package:flutter/material.dart';
import 'package:home_services/core/Helpers/Regex.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/component/password_validation.dart';

// ignore: must_be_immutable
class CustomPassword extends StatefulWidget {
  CustomPassword(
      {super.key, required this.passwordControl});


  var passwordControl;

  @override
  State<CustomPassword> createState() => _CustomPasswordState();
}

class _CustomPasswordState extends State<CustomPassword> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool obscure = true;

  void initState() {
    super.initState();

    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    widget.passwordControl.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(widget.passwordControl.text);
        hasUpperCase = AppRegex.hasUpperCase(widget.passwordControl.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(widget.passwordControl.text);
        hasNumber = AppRegex.hasNumber(widget.passwordControl.text);
        hasMinLength = AppRegex.hasMinLength(widget.passwordControl.text);
      });
    });
  }
  @override
  Widget build(BuildContext context) {


    return  Column(
      children: [
        TextFormField(
          controller: widget.passwordControl,
          validator:(value) {
            if (value!.isEmpty ||
                !AppRegex.hasLowerCase(value) ||
                !AppRegex.hasUpperCase(value) ||
                !AppRegex.hasMinLength(value) ||
                !AppRegex.hasNumber(value) ||
                !AppRegex.hasSpecialCharacter(value)) {
              return 'Password should not be empty';
            }
            return null;
          },
          obscureText: obscure,
          decoration:  InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                  const BorderSide(width: 2, color: ColorManager.maingray)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                  const BorderSide(width: 2, color: ColorManager.dark_blue)),
              labelText: 'Password',
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: ColorManager.dark_blue),
              suffixIcon: IconButton(
                color: ColorManager.dark_blue, onPressed: (){
                  setState(() {
                    obscure=!obscure;
                  });
              }, icon: Icon((obscure)?Icons.visibility:Icons.visibility_off),

              ))
        ),
        const SizedBox(
          height: 5,
        ),
        PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength),
      ],
    );
  }
  @override
  void dispose() {
    widget.passwordControl.dispose();
    super.dispose();
  }
}