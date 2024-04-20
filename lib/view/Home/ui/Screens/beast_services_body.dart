import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/textstyle.dart';
import 'package:home_services/view/Home/ui/widget/best_service_home.dart';

class BestServicesBody extends StatefulWidget {
  const BestServicesBody({Key? key}) : super(key: key);

  @override
  State<BestServicesBody> createState() => _BestServicesBodyState();
}

class _BestServicesBodyState extends State<BestServicesBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                onPressed: () {
                  context.pop();
                }, icon: Icon(Icons.arrow_back),),
                Text('Best Services',style:AppTextStyle.fontsizebold20semi),
                IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined))
              ],
            ),
            SizedBox(height: 20.h,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      BestServiceHome(),
                      SizedBox(height: 10.h,)
                    ],
                  );
                },
                  itemCount: 10),
            )
          ],),
        ),
      ),
    );
  }
}