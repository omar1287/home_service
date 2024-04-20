import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/core/Theming/textstyle.dart';
import 'package:home_services/view/onboarding/ui/Screens/onchange.dart';
import 'package:home_services/view/onboarding/ui/Screens/onchange_method.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types


// ignore: must_be_immutable
class OnboardingBody extends StatelessWidget {
  var controllPage = PageController();
  bool cc = false;

  List<onChange> listOfImages= [
    onChange(
        im: 'assets/images/carpenter1.jpg',
        t1: 'Find best solution for your home',
        t2: 'accounts for nearly all the trades and materials that serve homeowners, homeowners associations, and even commercial services.'),
    onChange(
        im: 'assets/images/carpenter2.jpg',
        t1: 'Provide best quality service in budget ',
        t2: 'One of the largest segments of the home service businesses includes heating, ventilation'),
    onChange(
        im: 'assets/images/carpenter3.jpg',
        t1: 'Get best service experience with us ',
        t2: 'Electrical installation, maintenance, and repair are high-demand services for homeowners.'),
  ];

  OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    void goToLoginScreen() async {
      (context.pushNamed(Routes.Login));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: goToLoginScreen,
              child: Text(
                'Skip',
                style: AppTextStyle.fontsizebold20.copyWith(
                  color: ColorManager.dark_blue
                ),
              ))
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index) {
                  if (index == listOfImages.length - 1) {
                    cc = true;
                  } else {
                    cc = false;
                  }
                },
                controller: controllPage,
                itemBuilder: (context, index) {
                  return onchangeMethod(listOfImages[index]);
                },
                itemCount: listOfImages.length,
              ),
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: controllPage,

                  count: listOfImages.length,
                  effect:  ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: ColorManager.dark_blue,
                      dotHeight: 10.h,
                      dotWidth: 10.w,
                      spacing: 10,),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    controllPage.nextPage(
                        duration: const Duration(microseconds: 250),
                        curve: Curves.bounceIn);
                    if (cc) {
                      goToLoginScreen();
                    }
                  },
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorManager.dark_blue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

