import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: ETexts.onBoardingTitle1,
                subtitle: ETexts.onBoardingSubTitle1,
                image: EImages.onboarding1,
              ),
              OnBoardingPage(
                title: ETexts.onBoardingTitle2,
                subtitle: ETexts.onBoardingSubTitle2,
                image: EImages.onboarding2,
              ),
              OnBoardingPage(
                title: ETexts.onBoardingTitle3,
                subtitle: ETexts.onBoardingSubTitle3,
                image: EImages.onboarding3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnboardingDotNavigation(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
