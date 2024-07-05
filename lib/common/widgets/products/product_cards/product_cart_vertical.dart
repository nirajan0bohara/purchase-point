import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:purchasepoint/common/widgets/icons/circular_icon.dart';
import 'package:purchasepoint/common/widgets/images/rounded_image.dart';
import 'package:purchasepoint/common/widgets/texts/product_title_text.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/common/styles/shadows.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    //vertical card with height, width,..
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          //Thumbnail,wishlist button, discount tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                //Thumbnail Image
                const TRoundedImage(
                  imageUrl: TImages.shoeIcon,
                  fit: BoxFit.contain,
                  applyImageRadius: true,
                ),

                //Sale tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                //favorite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    // backgroundColor: Colors.transparent,
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          // Details
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TProductTitleText(
                  title: 'Black Nike Air Shoes',
                  smallSize: true,
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text(
                      'Nike',
                      style: Theme.of(context).textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(width: TSizes.xs),
                    const Icon(Iconsax.verify5,
                        color: TColors.primary, size: TSizes.iconXs),
                  ],
                ),
                // Spacer(),

                //Button and price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    const TProductPriceText(
                      price: '4000',
                    ),

                    // Add to cart Button
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                          height: TSizes.iconLg * 1.2,
                          width: TSizes.iconLg * 1.2,
                          child: Center(
                              child: Icon(Iconsax.add, color: TColors.white))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = 'Rs. ',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });
  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
