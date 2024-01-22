import 'package:flutter/material.dart';

import 'custom_image_container.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.15 ,
      width: double.infinity,
      child: ListView.separated(
        itemBuilder: (context, index) => const CustomImageContainer(urlImage: '',) ,
        separatorBuilder: (context, index) => const SizedBox(width: 15,),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
