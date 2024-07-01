import 'package:flutter/material.dart';
import 'package:purchasepoint/utils/constants/text_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PurchasePoint'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(TTexts.onBoardingSubTitle1),
        ),
      ),
    );
  }
}
