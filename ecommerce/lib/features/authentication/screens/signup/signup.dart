import 'package:ecommerce/common/widgets/signup_signin/form_devider.dart';
import 'package:ecommerce/common/widgets/signup_signin/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// title
              Text(
                ETexts.registerTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              /// form
              const SignupForm(),

              // Divider
              const FormDivider(dividerText: ETexts.orSignUpWIth),
              const SizedBox(height: AppSizes.spaceBtwSections),
              // Social Login Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
