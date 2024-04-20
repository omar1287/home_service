import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:home_services/core/Theming/colors.dart';

class BestServiceHome extends StatefulWidget {
  const BestServiceHome({super.key});

  @override
  State<BestServiceHome> createState() => _BestServiceHomeState();
}

class _BestServiceHomeState extends State<BestServiceHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 2.05,
      // width: MediaQuery.of(context).size.width / 1.3,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 212, 221, 228),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset('assets/images/plumber.jpg',
            height: MediaQuery.of(context).size.height / 5.5,
            width: MediaQuery.of(context).size.width / 1.3,
            fit: BoxFit.cover,
            
            )),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                // height: MediaQuery.of(context).size.height / 15,
                // width: MediaQuery.of(context).size.width / 4.2,
                child: RatingBar.builder(
                  itemSize: 17,
                  initialRating: 5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 236, 238, 241),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Text(
                '(130 Reviews)',
                style: TextStyle(color: ColorManager.dark_blue, fontSize: 10),
              ),
            ],
          ),
          Text(
            'Complet Kitchen Cleaning',
            style: TextStyle(
                color: ColorManager.dark_blue,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '\$ 150',
            style: TextStyle(
                color: ColorManager.dark_blue,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(image: AssetImage('assets/images/person.jpg')),
                  ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mark Willions',style: TextStyle(color: ColorManager.dark_blue,fontSize: 15,fontWeight: FontWeight.bold),),
                  Text('Service Provider',style: TextStyle(color: ColorManager.dark_blue,fontSize: 10),),
                ],
              ),
              Spacer(),
              ElevatedButton(
            onPressed: () {},
            child: Text('Add',style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorManager.mainblue,
              shape: StadiumBorder(),
            ),
      )
            ],
          )
        ],
      ),
    );
  }
}