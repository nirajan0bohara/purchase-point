import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:purchasepoint/common/widgets/images/circular_image.dart';
import 'package:purchasepoint/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:purchasepoint/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:purchasepoint/common/widgets/texts/section_heading.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/utils/constants/enums.dart';
import 'package:purchasepoint/utils/constants/image_strings.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //Searchbar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(
                      text: 'Search your Product',
                      showBackground: false,
                      showBorder: true,
                      icon: Iconsax.search_normal,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    // Featured Brands
                    TSectionHeading(
                      showActionButton: true,
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    GestureDetector(
                      onTap: () {},
                      child: TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            //Icon
                            TCircularImage(
                              image: TImages.clothIcon,
                              backgroundColor: Colors.transparent,
                              isNetworkImage: false,
                              overlayColor: THelperFunctions.isDarkMode(context)
                                  ? TColors.white
                                  : TColors.black,
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems / 1.5),
                            // Texts
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TBrandTitleWithVerifiedIcon(
                                  title: 'Jara',
                                  brandTextSize: TextSizes.large,
                                ),
                                Text(
                                  '256 Products',
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
