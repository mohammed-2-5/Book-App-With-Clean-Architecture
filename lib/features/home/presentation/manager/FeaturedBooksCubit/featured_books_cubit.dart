import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/BookEntity.dart';
import '../../../domain/use_cases/FetchFeaturesBooksUseCase.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuresBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeaturesBooksUseCase featuresBooksUseCase;
  Future<void> fetchFeaturedBooks({int pageNumber = 0})async {
    if (pageNumber==0) {
      emit(FeaturedBooksLoading());
    }else{
      emit(FeaturedBooksPaginationLoading());
    }
    var result =await featuresBooksUseCase.call(pageNumber);
    result.fold((failure) {
      if (pageNumber==0) {
        emit(FeaturedBooksFailure(failure.error));
      }
      else {
        emit(FeaturedBooksPaginationFailure(failure.error));
      }
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
