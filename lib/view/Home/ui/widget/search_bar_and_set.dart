import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_services/core/Theming/colors.dart';

class SearchBarAndSet extends StatefulWidget {
  SearchBarAndSet({Key? key}) : super(key: key);

  @override
  State<SearchBarAndSet> createState() => _SearchBarAndSetState();
}

class _SearchBarAndSetState extends State<SearchBarAndSet> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.all(5),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: ColorManager.maingrayform,
          child: Image.asset('assets/icons/setting_5736290.png', height: 25, width: 25),
          radius: 20,
        )
      ],
    );
  }
}