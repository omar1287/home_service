import 'package:flutter/material.dart';
import 'package:home_services/view/Home/ui/Screens/category_body.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryBody(),
    );
  }
}