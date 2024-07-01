import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchasepoint/common/widgets/login_signup/form_divider.dart';
import 'package:purchasepoint/common/widgets/login_signup/social_buttons.dart';
import 'package:purchasepoint/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/constants/text_strings.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
          // foregroundColor: dark ? TColors.white : TColors.black,
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              TSignupForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Divider
              TFormDivider(
                  dark: dark, dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Social Buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
