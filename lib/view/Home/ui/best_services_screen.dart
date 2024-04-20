import 'package:flutter/material.dart';
import 'package:home_services/view/Home/ui/Screens/beast_services_body.dart';

class BestServicesScrean extends StatefulWidget {
  const BestServicesScrean({super.key});

  @override
  State<BestServicesScrean> createState() => _BestServicesScreanState();
}

class _BestServicesScreanState extends State<BestServicesScrean> {
  @override
  Widget build(BuildContext context) {
    return BestServicesBody();
  }
}