import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/products/cart/add_remove_button.dart';
import 'package:purchasepoint/common/widgets/products/cart/cart_item.dart';
import 'package:purchasepoint/common/widgets/texts/product_price_text.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwItems,
      ),
      itemBuilder: (_, __) => Column(
        children: [
          //cart item
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),

          // Add Remove Button Row with total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //Extra space
                    SizedBox(width: 70),
                    // Add ans remove Buttons
                    TProductQuantityAddAndRemoveButton(),
                  ],
                ),

                //price
                TProductPriceText(price: '3400'),
              ],
            ),
          const Divider(),
        ],
      ),
    );
  }
}
