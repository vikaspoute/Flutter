import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceSection),
        child: Column(
          children: [
            // first and last name
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: ETexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(width: ESizes.spaceBtwInputFields),
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: ETexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),

            /// username
            TextFormField(
              decoration: const InputDecoration(
                labelText: ETexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),

            ///email
            TextFormField(
              decoration: const InputDecoration(
                labelText: ETexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),

            /// phone number
            TextFormField(
              decoration: const InputDecoration(
                labelText: ETexts.phoneNumber,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                labelText: ETexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),

            // Terms and conditions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    const SizedBox(width: ESizes.itemSpace),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${ETexts.iAgreeTo} ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: '${ETexts.privacyPolicy} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                  color:
                                      isDark ? Colors.white : EColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      isDark ? Colors.white : EColors.primary,
                                ),
                          ),
                          TextSpan(
                            text: '${ETexts.and} ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: '${ETexts.termsOfUse} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                  color:
                                      isDark ? Colors.white : EColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      isDark ? Colors.white : EColors.primary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: ESizes.spaceSection),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const VerifyEmailScreen());
                },
                child: const Text(ETexts.createAccount),
              ),
            ),
            const SizedBox(height: ESizes.itemSpace),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const LoginScreen());
                },
                child: const Text(ETexts.signIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
