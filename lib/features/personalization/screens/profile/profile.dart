import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/common/widgets/images/circular_image.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profile picture

              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.google, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Heading Profile Info
              const TSectionHeading(
                  showActionButton: false, title: 'Profile Information'),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Nirajan Bohara',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'username',
                value: 'nirajanbohara',
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Heading personal Info
              const TSectionHeading(
                  showActionButton: false, title: 'Personal Information'),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                  onPressed: () {},
                  title: 'User ID',
                  icon: Iconsax.copy,
                  value: '44937'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: 'nirajanbohara@gmail.com'),
              TProfileMenu(
                  onPressed: () {}, title: 'Phone Number', value: '9865654342'),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'Date of Birth',
                  value: '14 Dec, 2002'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red, fontSize: TSizes.md),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
