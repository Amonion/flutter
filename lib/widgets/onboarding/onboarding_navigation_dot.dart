import 'package:flutter/material.dart';
import 'package:flutter_theme/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_theme/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/device/device_utility.dart';

class OnBoardingNavigationDot extends StatelessWidget {
  const OnBoardingNavigationDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final isDark = KHelperFunctions.isDarkMode(context);
    return Positioned(bottom: KDeviceUtils.getBottomNavigationBarHeight()+25,
        left: KSizes.defaultSpace,

        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(activeDotColor: isDark? KColors.light: KColors.dark, dotHeight: 6), onDotClicked: controller.dotNavigationClick, controller: controller.pageController, count: 3,));
  }
}
