import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/best_seller_items.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const BestSellerItems();
      },
      separatorBuilder:(context, index) => const SizedBox(height: 20,),
      itemCount: 10,
      scrollDirection: Axis.vertical,
    );
  }
}
