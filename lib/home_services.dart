import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Routting/approuter.dart';
import 'package:home_services/core/Theming/colors.dart';

class Services extends StatelessWidget {
  const Services({super.key, required this.appRouter});

  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'DocDocApp',
        theme: ThemeData(
            primaryColor: ColorManager.mainblue,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.home,
      ),
    );
  }
}
