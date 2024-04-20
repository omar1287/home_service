import 'package:flutter/material.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/view/Home/ui/Screens/beast_services_body.dart';
import 'package:home_services/view/Home/ui/widget/best_service_home.dart';
import 'package:home_services/view/Home/ui/widget/cat_home.dart';
import 'package:home_services/view/Home/ui/widget/custom_app_bar.dart';
import 'package:home_services/view/Home/ui/widget/search_bar_and_set.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,   
          child: Container(
            // width: MediaQuery.of(context).size.width/0.9,
            // height: MediaQuery.of(context).size.height/0.6,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CustomAppBar(),
                  const SizedBox(height: 10,),
                  SearchBarAndSet(),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('ALL Categories',style: TextStyle(color: ColorManager.dark_blue,fontSize: 20),),
                      Spacer(),
                      TextButton(onPressed: () {
                        context.pushNamed(Routes.category);
                      },
                      child: Text('See All',style: TextStyle(color: ColorManager.mainblue,fontSize: 20),)),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  CatHome(),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Best Services',style: TextStyle(color: ColorManager.dark_blue,fontSize: 20),),
                      Spacer(),
                      TextButton(onPressed: () {
                        context.pushNamed(Routes.BestServices);
                      },
                      child: Text('See All',style: TextStyle(color: ColorManager.mainblue,fontSize: 20),)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  BestServiceHome(),
                  
                ],
              ), 
              ),
          ),
        )
      ),
    );
  }
}
