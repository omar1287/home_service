import 'package:flutter/material.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/view/Home/ui/models/repo/cat_repo.dart';

class CatHome extends StatefulWidget {
  const CatHome({super.key});

  @override
  State<CatHome> createState() => _CatHomeState();
}

class _CatHomeState extends State<CatHome> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height/8,
      width: MediaQuery.of(context).size.width/1.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: catList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        catList[index].image,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Text(
                      catList[index].text,
                      style: TextStyle(
                        color: ColorManager.dark_blue,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10,),
            ],
          );
        },
      ),
    )
;
  }
}