import 'package:booklyapp/core/utils/Styles.dart';
import 'package:flutter/material.dart';


import 'CustomBookListBlocBuilder.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: CustomAppBar(),
              ),
              const SizedBox(height: 20,),
              CustomBookListBlocConsumer(),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text('Best Seller',style: Styles.textStyle18,),
              ),
              const SizedBox(height: 15,),
            ],
          ) ,
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        ),
      ],
    );

  }
}



