import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services/view/register/logic/register_cubit/register_cubit.dart';
import 'package:home_services/view/register/ui/screens/register_body.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(create: (context)=>RegisterCubit(),
    child: SafeArea(child: RegisterBody()),
    );
  }
}
