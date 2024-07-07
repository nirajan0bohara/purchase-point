import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/common/widgets/brand/brand_card.dart';
import 'package:purchasepoint/common/widgets/layouts/grid_layout.dart';
import 'package:purchasepoint/common/widgets/products/sortable/sortable_products.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              const TSectionHeading(showActionButton: true, title: 'Brands'),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Brands
              TGridLayout(
                itemcount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const TSortableProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
