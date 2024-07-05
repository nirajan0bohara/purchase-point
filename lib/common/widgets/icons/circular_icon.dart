import 'package:flutter/material.dart';
import 'package:purchasepoint/utils/constants/colors.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';
import 'package:purchasepoint/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.size = TSizes.lg,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColors.black.withOpacity(0.5)
                : TColors.white.withOpacity(0.5),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
