import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchasepoint/common/styles/spacing_styles.dart';
import 'package:purchasepoint/common/widgets/login_signup/form_divider.dart';
import 'package:purchasepoint/features/authentication/screens/login/widgets/login_form.dart';
import 'package:purchasepoint/features/authentication/screens/login/widgets/login_header.dart';
import 'package:purchasepoint/common/widgets/login_signup/social_buttons.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/constants/text_strings.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo ,title and subtitle
              TLoginHeader(dark: dark),

              //form
              const TLoginForm(),

              // Divider
              TFormDivider(
                  dark: dark, dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Footer
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
