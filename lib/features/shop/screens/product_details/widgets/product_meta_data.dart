import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:purchasepoint/common/widgets/images/circular_image.dart';
import 'package:purchasepoint/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:purchasepoint/common/widgets/texts/product_price_text.dart';
import 'package:purchasepoint/common/widgets/texts/product_title_text.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/utils/constants/enums.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and sale price
        Row(
          children: [
            //sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: darkMode ? TColors.white : TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            //Price
            Text(
              'Rs. 1500',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '4500', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Title
        const TProductTitleText(title: 'Grade 12 Math Book'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Stock:'),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Brand
        const Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              // overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            TBrandTitleWithVerifiedIcon(
                title: 'GoldStar', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
