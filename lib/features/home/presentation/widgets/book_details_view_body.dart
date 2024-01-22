import 'package:booklyapp/features/home/presentation/widgets/similar_books%20_list%20_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Styles.dart';
import 'book_information_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const BookInformationSection(),
                const SizedBox(height: 30,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Our Related Books',
                      style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                    )),
                const SizedBox(height: 10,),
                const SimilarBooksListView(),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        )
      ],
    );
  }
}
