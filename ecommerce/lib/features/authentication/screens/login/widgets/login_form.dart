import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceSection),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                labelText: ETexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
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
            const SizedBox(height: ESizes.spaceBtwInputFields / 2),

            // Remember Me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ETexts.rememberMe),
                  ],
                ),

                // Forgot Password
                TextButton(
                  onPressed: () {},
                  child: const Text(ETexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: ESizes.spaceSection),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(ETexts.signIn),
              ),
            ),
            const SizedBox(height: ESizes.itemSpace),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text(ETexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
