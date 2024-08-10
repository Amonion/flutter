import 'package:flutter/material.dart';
import 'package:flutter_theme/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_theme/utils/constants/image_strings.dart';
import 'package:flutter_theme/utils/constants/sizes.dart';
import 'package:flutter_theme/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import '../../widgets/onboarding/onboarding_navigation_dot.dart';
import '../../widgets/onboarding/onboarding_next.dart';
import '../../widgets/onboarding/onboarding_page.dart';
import '../../widgets/onboarding/onboarding_skip.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(image: KImages.onboarding1, title: KTexts.onBoardingTitle1, subTitle: KTexts.onBoardingSubTitle1,),
              OnBoardingPage(image: KImages.onboarding2, title: KTexts.onBoardingTitle1, subTitle: KTexts.onBoardingSubTitle1,),
              OnBoardingPage(image: KImages.onboarding3, title: KTexts.onBoardingTitle1, subTitle: KTexts.onBoardingSubTitle1,),
            ],
          ),
          
          OnBoardingSkip(),
          
          OnBoardingNavigationDot(),
          
          OnBoardingNext()
        ],
      ),
    );
  }
}



