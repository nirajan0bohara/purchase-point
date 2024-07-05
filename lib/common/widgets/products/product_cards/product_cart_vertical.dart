import 'package:flutter/material.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/common/styles/shadows.dart';
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
      child: const Column(
        children: [
          //Thumbnail,wishlist button, discount tag

          // Details
        ],
      ),
    );
  }
}
