import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/view/onboarding/ui/Screens/onchange.dart';

Widget onchangeMethod(onChange c) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Image(
      image: NetworkImage(c.im),
      height: 400.h,
      width: 400.w,
      fit: BoxFit.fill,
    ),
    const SizedBox(
      height: 40,
    ),
    Text(
      c.t1,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const SizedBox(
      height: 10,
    ),
    Text(
      c.t2,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    )
  ],
);
