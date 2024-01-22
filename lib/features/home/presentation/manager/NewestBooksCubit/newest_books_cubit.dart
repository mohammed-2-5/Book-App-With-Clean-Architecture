import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/BookEntity.dart';
import '../../../domain/use_cases/FetchFeaturesBooksUseCase.dart';
import '../../../domain/use_cases/FetchNewestBooksUseCase.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit( this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchFeaturedBooks()async {
    emit(NewestBooksLoading());
    var result =await fetchNewestBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.error));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
