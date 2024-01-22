import 'package:booklyapp/core/functions/showSnackBar.dart';
import 'package:booklyapp/features/home/presentation/manager/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/BookEntity.dart';
import 'custom_books_list.dart';

class CustomBookListBlocConsumer extends StatefulWidget {
   const CustomBookListBlocConsumer({
    super.key,
  });

  @override
  State<CustomBookListBlocConsumer> createState() => _CustomBookListBlocConsumerState();
}

class _CustomBookListBlocConsumerState extends State<CustomBookListBlocConsumer> {
   List<BookEntity> books=[];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit,FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(errorSnackBar(state.error));
        }
      },
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess||state is FeaturedBooksPaginationLoading||state is FeaturedBooksPaginationFailure) {
          return  CustomBooksList(
            books:books,
          );
        }else if(state is FeaturedBooksFailure){

          return Text(state.error);
        }else{
          return const Center(child: CircularProgressIndicator(color: Colors.red,));
        }
      },
    );
  }

}
