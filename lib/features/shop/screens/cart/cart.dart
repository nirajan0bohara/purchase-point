import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/common/widgets/images/rounded_image.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            itemBuilder: (_, __) => const Column(
              children: [
                Row(
                  children: [
                    //Image
                    TRoundedImage(
                      imageUrl: TImages.electronicIcon,
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: TSizes.spaceBtwItems),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
