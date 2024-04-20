import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_services/core/Routting/Routs.dart';
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
          child: CustomScrollView(
            primary: true,
            slivers: [
              SliverAppBar(
                key: UniqueKey(), // Add a unique key here
                title: const Text('Best Services'),
                centerTitle: true,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10,),
              SliverToBoxAdapter(
                child: BestServiceHome(),
              )
              // SliverToBoxAdapter(
              //   child: SliverList(
              //     key: UniqueKey(), // Add a unique key here
              //     delegate: SliverChildBuilderDelegate(
              //       (context, index) {
              //         return Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: BestServiceHome(),
              //         );
              //       },
              //       childCount: 10,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}