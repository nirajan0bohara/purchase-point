import 'package:flutter/material.dart';
import 'package:purchasepoint/common/widgets/appbar/appbar.dart';
import 'package:purchasepoint/common/widgets/products/rating/rating_idicator.dart';
import 'package:purchasepoint/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:purchasepoint/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:purchasepoint/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const TAppBar(
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
              const Text(
                  'providing a robust exception handling mechanism, which allows developers to handle runtime errors in a structured way.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Overall Product Rating
              const TOverallProductRating(),

              //Rating bar
              const TRatingBarIndicator(rating: 3.5),
              Text('2,34,030', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              //User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
