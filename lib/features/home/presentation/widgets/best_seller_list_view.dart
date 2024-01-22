import 'package:flutter/material.dart';

import 'best_seller_items.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const BestSellerItems();
      },
      separatorBuilder:(context, index) => const SizedBox(height: 20,),
      itemCount: 10,
      scrollDirection: Axis.vertical,
    );

  }
}
