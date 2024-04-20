

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animatedMethod();
    navigateToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, _) {
                return SlideTransition(
                    position: slidingAnimation,
                    child:  Column(
                      children: [
                        Image(image: const AssetImage('assets/images/logo1.png'),height: 200.h,width: 200.w,),

                      ],
                    ));
              }),
        ],
      ),
    );
  }

  void animatedMethod() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      // Get.to(() => const Home(),
      //     transition: Transition.fade,
      //     duration: const Duration(microseconds: 250));
      context.pushNamed(Routes.Onboarding);
    });
  }
}