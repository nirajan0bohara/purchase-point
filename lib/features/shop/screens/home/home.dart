import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:purchasepoint/common/widgets/layouts/grid_layout.dart';
import 'package:purchasepoint/common/widgets/products/product_cards/product_cart_vertical.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/features/shop/screens/home/widgets/carousel_slider.dart';
import 'package:purchasepoint/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:purchasepoint/features/shop/screens/home/widgets/home_categories.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const TPrimaryHeaderContainer(
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

            //Body part
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Carousel Slider
                  const TCarouselSlider(
                    banners: [
                      TImages.carasoulBanner1,
                      TImages.carasoulBanner2,
                      TImages.carasoulBanner3,
                      TImages.carasoulBanner1,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //Heading
                  TSectionHeading(
                    showActionButton: true,
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Popular Products
                  TGridLayout(
                    itemcount: 4,
                    mainAxisExtent: 280,
                    itemBuilder: (_, index) => TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
