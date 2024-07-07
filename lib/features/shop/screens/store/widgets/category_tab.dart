import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/brand/brand_show_case.dart';
import 'package:purchasepoint/common/widgets/layouts/grid_layout.dart';
import 'package:purchasepoint/common/widgets/products/product_cards/product_cart_vertical.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              const TBrandShowcase(
                images: [
                  TImages.sportIcon,
                  TImages.booksIcon,
                  TImages.clothIcon
                ],
              ),
              const TBrandShowcase(
                images: [
                  TImages.sportIcon,
                  TImages.booksIcon,
                  TImages.clothIcon
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Products
              TSectionHeading(
                showActionButton: true,
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TGridLayout(
                itemcount: 4,
                itemBuilder: (_, index) => const TProductCardVertical(),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
