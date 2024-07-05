import 'package:flutter/material.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/device/device_utility.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon,
    required this.showBackground,
    required this.showBorder,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
            border: showBorder ? Border.all(color: TColors.grey) : null,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? TColors.darkerGrey : Colors.grey,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: TColors.darkGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
