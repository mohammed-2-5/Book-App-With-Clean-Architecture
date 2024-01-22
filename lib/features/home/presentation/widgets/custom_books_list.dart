import 'package:booklyapp/features/home/presentation/manager/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/BookEntity.dart';
import 'custom_image_container.dart';

class CustomBooksList extends StatefulWidget {
  const CustomBooksList({
    super.key, required this.books,
  });
  final List<BookEntity> books;

  @override
  State<CustomBooksList> createState() => _CustomBooksListState();
}


class _CustomBooksListState extends State<CustomBooksList> {
  var nextPage=1;
  var isLoading=false;
 late  final ScrollController _scrollController;
  @override
  void initState(){
    super.initState();
    _scrollController=ScrollController();
    _scrollController.addListener(_scrollListener);

  }


  void _scrollListener() async {
    var currentPositions = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPositions >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();


  }  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3 ,
      width: double.infinity,
      child: ListView.separated(
        controller: _scrollController,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomImageContainer(
          urlImage: widget.books[index].imageName ?? '',
          ),);
        } ,
        separatorBuilder: (context, index) => const SizedBox(width: 15,),
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
