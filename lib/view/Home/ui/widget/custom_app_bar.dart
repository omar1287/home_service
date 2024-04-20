import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/Theming/textstyle.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Color(0xffCCE4F7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.location_on_outlined,
            color: Color(0xff539FF3),
            size: 25,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Delivery Address',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2118 Thomasville Rd',
                  style: TextStyle(color: ColorManager.dark_blue, fontSize: 12),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: ColorManager.dark_blue,
                  size: 10,
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Icon(
          IconData(0xe59c, fontFamily: 'MaterialIcons'),
          color: ColorManager.dark_blue,
          size: 30,
        ),
      ],
    );
  }
}
