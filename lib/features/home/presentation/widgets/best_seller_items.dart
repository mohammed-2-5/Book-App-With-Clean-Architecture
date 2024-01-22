import 'package:booklyapp/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import 'booking_rating.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails );
        },
      child: Row(
        children: [
          SizedBox(
            height: 140,
            child: AspectRatio(
              aspectRatio: 2.7/4,
              child: Container(
                height: 90,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  image: const DecorationImage(image: AssetImage(AssetsData.book2),fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30,),
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                    child: Text('Harry Potter and the Goblet of fire',
                      style: Styles.textStyle20.copyWith(fontFamily: kFontFamily),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                const SizedBox(height: 4,),
                const Text('J.K Rowling',style: Styles.textStyle14,),
                const SizedBox(height: 4,),
                Row(
                  children: [
                    Text('19.99 \$',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    const BookingRating(),
                  ],
                )
              ],
          ),
           )
        ],
      ),
    );
  }
}

