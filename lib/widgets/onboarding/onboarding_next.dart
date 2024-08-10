import 'package:flutter/material.dart';
import 'package:flutter_theme/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_theme/utils/constants/colors.dart';
import 'package:flutter_theme/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/device/device_utility.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return Positioned(right: KSizes.defaultSpace,
        bottom: KDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: isDark? KColors.primaryColor: KColors.dark),
          onPressed: ()=>OnBoardingController.instance.nextPage(), child: Icon(Iconsax.arrow_right_3),));
  }
}
