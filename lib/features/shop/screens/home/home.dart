import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:purchasepoint/features/shop/screens/home/widgets/home_categories.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //SearchBar
                  TSearchContainer(
                    text: 'Search in Store',
                    showBackground: true,
                    showBorder: true,
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Categories Sections
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //Categories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
