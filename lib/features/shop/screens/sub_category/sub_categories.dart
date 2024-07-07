import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/common/widgets/images/rounded_image.dart';
import 'package:purchasepoint/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Sport Items'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              TRoundedImage(
                imageUrl: TImages.carasoulBanner1,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              // Sub Categories
              TSubCategory(),
              SizedBox(height: TSizes.spaceBtwSections),

              TSubCategory(),
              SizedBox(height: TSizes.spaceBtwSections),

              TSubCategory(),
            ],
          ),
        ),
      ),
    );
  }
}

class TSubCategory extends StatelessWidget {
  const TSubCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Heading
        TSectionHeading(
          showActionButton: true,
          title: 'Sports Equipments',
          onPressed: () {},
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        SizedBox(
          height: 120,
          child: ListView.separated(
            itemCount: 4,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) =>
                const SizedBox(width: TSizes.spaceBtwItems),
            itemBuilder: (context, index) => const TProductCardHorizontal(),
          ),
        ),
      ],
    );
  }
}
