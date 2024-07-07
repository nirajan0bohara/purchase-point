import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:purchasepoint/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:purchasepoint/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:purchasepoint/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:purchasepoint/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:purchasepoint/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image slider
            const TProductImageSlider(),

            //Product details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //Rating & share
                  const TRatingAndShare(),

                  //Price, Title, stack, and brand
                  const TProductMetaData(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //Description
                  const TSectionHeading(
                      showActionButton: false, title: 'Description'),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'providing a robust exception handling mechanism, which allows developers to handle runtime errors in a structured way. ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        showActionButton: false,
                        title: 'Reviews(189)',
                        onPressed: () {},
                      ),
                      IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(Iconsax.arrow_right_3),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
