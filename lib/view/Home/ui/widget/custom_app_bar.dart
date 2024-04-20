import 'package:flutter/material.dart';
import 'package:home_services/core/Theming/colors.dart';

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
          decoration: BoxDecoration(
            color: Color(0xffCCE4F7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.location_on_outlined,color: Color (0xff539FF3),size: 25,),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Delivery Address',style: TextStyle(color: ColorManager.dark_blue,fontSize: 10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text('2118 Thomasville Rd',style: TextStyle(color:  ColorManager.dark_blue,fontSize: 10),
                ),
                Icon(Icons.arrow_drop_down,color: ColorManager.dark_blue, size: 10,),
              ],
              ),
            ],
          ),
          Spacer(),
           Icon(IconData(0xe59c, fontFamily: 'MaterialIcons'),color:ColorManager.dark_blue ,size: 30,),
      ],
    );
  }
}