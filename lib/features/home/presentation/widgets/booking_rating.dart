import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/Styles.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 18,),
        const SizedBox(width: 9,),
        const Text('4.8 ',style: Styles.textStyle16,),
        const SizedBox(width:5,),

        Text('(4.484)',style: Styles.textStyle14.copyWith(color: Colors.grey.shade500),),
      ],
    );
  }
}
