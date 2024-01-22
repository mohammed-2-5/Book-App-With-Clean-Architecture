import 'package:booklyapp/core/utils/Styles.dart';
import 'package:booklyapp/features/Search/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Column(
      children: [
        CustomTextField(),
         SizedBox(height: 10,),
        Text('Search Results',style: Styles.textStyle18,),
        SizedBox(height: 10,),

        Expanded(child: SearchResultListView())
      ],
    );
  }
}
