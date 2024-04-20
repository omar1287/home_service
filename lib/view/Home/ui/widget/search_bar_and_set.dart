import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          padding: EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.height / 20,
            decoration: BoxDecoration(
              color: Color(0xffCCE4F7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/icons/setting_5736290.png', height: 30, width: 30),
          ),
        ),
      ],
    );
  }
}