import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/common/widgets/signup_signin/form_devider.dart';
import 'package:ecommerce/common/widgets/signup_signin/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, and Subtitle
              LoginHeader(),

              // Login Form
              LoginForm(),

              // Divider
              FormDivider(dividerText: ETexts.orSignInWIth),
              SizedBox(height: AppSizes.spaceBtwSections),
              // Social Login Buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
