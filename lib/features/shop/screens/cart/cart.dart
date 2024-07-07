import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:purchasepoint/features/shop/screens/checkout/checkout.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout Rs. 3400'),
        ),
      ),
    );
  }
}
