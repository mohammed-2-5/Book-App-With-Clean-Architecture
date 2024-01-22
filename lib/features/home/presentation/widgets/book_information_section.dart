import 'package:flutter/material.dart';

import '../../../../core/utils/Styles.dart';
import 'book_action_button.dart';
import 'booking_rating.dart';
import 'custom_image_container.dart';

class BookInformationSection extends StatelessWidget {
  const BookInformationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomImageContainer(urlImage: '',),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Mohammed Yasser',
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const BookingRating(),
        const SizedBox(
          height: 50,
        ),
        const BookActionButton(),
      ],
    );
  }
}
