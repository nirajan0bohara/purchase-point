import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'providing a robust exception handling mechanism, which allows developers to handle runtime errors in a structured way.'),
              SizedBox(height: TSizes.spaceBtwItems),

              // Overall Product Rating
              Row(
                children: [
                  Text('4.6', style: Theme.of(context).textTheme.displayLarge),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('5',
                              style: Theme.of(context).textTheme.bodyMedium),
                          LinearProgressIndicator(
                            value: 0.5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
