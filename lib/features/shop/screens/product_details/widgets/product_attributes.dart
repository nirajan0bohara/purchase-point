import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/chips/choice_chip.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:purchasepoint/common/widgets/texts/product_price_text.dart';
import 'package:purchasepoint/common/widgets/texts/product_title_text.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing and Descripton
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: darkmode ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              // Title, price, and stock status
              Row(
                children: [
                  const TSectionHeading(
                      showActionButton: false, title: 'Variation'),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price: ', smallSize: true),
                          // Actual Price
                          Text(
                            'Rs. 2300',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          //Sale price
                          const TProductPriceText(price: '2000'),
                        ],
                      ),
                      //Stock
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const TProductTitleText(
                title:
                    'This is a Description of the Product and it can go upto max 4 lines ',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        //Attributes
        Padding(
          padding: const EdgeInsets.only(top: TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TSectionHeading(showActionButton: false, title: 'Colors'),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Wrap(
                spacing: 8,
                children: [
                  TChoiceChip(
                      selected: false, text: 'Green', onSelected: (value) {}),
                  TChoiceChip(
                      selected: true, text: 'Red', onSelected: (value) {}),
                  TChoiceChip(
                      selected: false, text: 'Blue', onSelected: (value) {}),
                ],
              ),
            ],
          ),
        ),

        // For Sizes
        Padding(
          padding: const EdgeInsets.only(top: TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TSectionHeading(showActionButton: false, title: 'Size'),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Wrap(
                spacing: 10,
                children: [
                  TChoiceChip(
                      selected: false, text: 'EU-34', onSelected: (value) {}),
                  TChoiceChip(
                      selected: false, text: 'EU-36', onSelected: (value) {}),
                  TChoiceChip(
                      selected: true, text: 'EU-38', onSelected: (value) {}),
                  TChoiceChip(
                      selected: false, text: 'EU-36', onSelected: (value) {}),
                  TChoiceChip(
                      selected: false, text: 'EU-40', onSelected: (value) {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
