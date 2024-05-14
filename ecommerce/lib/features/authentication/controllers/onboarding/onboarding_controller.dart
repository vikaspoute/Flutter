import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Controller for page view navigation with smooth animations
  final pageController = PageController();

  // Observes changes in the current page index
  Rx<int> currentPageIndex = 0.obs;

  // Update the indicator to the current page index
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  // Handles navigation when dots are clicked with smooth transition
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  // Navigate to the next page with smooth sliding animation
  void nextPage() {
    const int lastPageIndex = 2; // Adjust this to your actual last page index
    if (currentPageIndex.value < lastPageIndex) {
      int nextPage = currentPageIndex.value + 1;
      pageController.animateToPage(nextPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      currentPageIndex.value = nextPage;
    } else {
      // Navigate to the LoginScreen if it's the last page
      Example:
      Get.offAll(const LoginScreen());
    }
  }

  // Skip directly to the last page with smooth sliding animation
  void skipPage() {
    const int lastPageIndex =
        2; // Define this according to your actual last page index
    currentPageIndex.value = lastPageIndex;
    pageController.animateToPage(lastPageIndex,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
