import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:purchasepoint/common/widgets/layouts/grid_layout.dart';
import 'package:purchasepoint/common/widgets/products/product_cards/product_cart_vertical.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //DropDown
        DropdownButtonFormField(
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList(),
          onChanged: (value) {},
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        TGridLayout(
            itemcount: 8,
            itemBuilder: (_, index) => const TProductCardVertical()),
      ],
    );
  }
}
