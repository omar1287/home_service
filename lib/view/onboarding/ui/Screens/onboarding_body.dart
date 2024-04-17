import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/Helpers/extension.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/view/onboarding/ui/Screens/onchange.dart';
import 'package:home_services/view/onboarding/ui/Screens/onchange_method.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types


// ignore: must_be_immutable
class OnboardingBody extends StatelessWidget {
  var controllPage = PageController();
  bool cc = false;

  List<onChange> ll = [
    onChange(
        im: 'https://recruiteze.com/wp-content/uploads/2021/11/Onboarding-amico-768x768.png',
        t1: 'The home service',
        t2: 'accounts for nearly all the trades and materials that serve homeowners, homeowners associations, and even commercial services.'),
    onChange(
        im: 'https://teaminsights.io/wp-content/uploads/2021/03/Onboarding-pana-1.png',
        t1: 'HVAC Services',
        t2: 'One of the largest segments of the home service businesses includes heating, ventilation'),
    onChange(
        im: 'https://cezannehr.com/wp-content/uploads/2022/07/How-to-make-onboarding-a-stress-free-experience-for-your-new-hires.png',
        t1: 'Electricians',
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
                style: Theme.of(context).textTheme.bodyLarge,
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
                  if (index == ll.length - 1) {
                    cc = true;
                  } else {
                    cc = false;
                  }
                },
                controller: controllPage,
                itemBuilder: (context, index) {
                  return onchangeMethod(ll[index]);
                },
                itemCount: ll.length,
              ),
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: controllPage,
                  count: ll.length,
                  effect:  ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.black,
                      dotHeight: 10.h,
                      dotWidth: 10.w,
                      spacing: 10),
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
                    color: Colors.black,
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

