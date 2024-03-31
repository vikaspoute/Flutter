import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// image
              Image(
                image: const AssetImage(EImages.deliveredEmailIllustration),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ESizes.spaceSection),

              /// title and subtitle
              Text(
                ETexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.itemSpace),
              Text(
                'support@codding.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.itemSpace),
              Text(
                ETexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceSection),

              ///Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: EImages.deliveredEmailIllustration,
                      title: ETexts.yourAccountCreatedTitle,
                      subTitle: ETexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(
                    ETexts.eContinue,
                  ),
                ),
              ),
              const SizedBox(height: ESizes.itemSpace),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    ETexts.resendEmail,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
