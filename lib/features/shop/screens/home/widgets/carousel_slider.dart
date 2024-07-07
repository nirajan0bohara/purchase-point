import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchasepoint/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:purchasepoint/common/widgets/images/rounded_image.dart';
import 'package:purchasepoint/features/shop/controllers/home_controller.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class TCarouselSlider extends StatelessWidget {
  const TCarouselSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners
              .map((url) => TRoundedImage(
                    imageUrl: url,
                    applyImageRadius: true,
                    isNetworkImage: false,
                    borderRadius: TSizes.md,
                  ))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  margin: const EdgeInsets.only(right: 10),
                  height: 5,
                  width: 20,
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
