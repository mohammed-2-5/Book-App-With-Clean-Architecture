
import 'package:booklyapp/core/errors/Failure.dart';
import 'package:booklyapp/features/home/domain/entities/BookEntity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0}) ;
  Future<Either<Failure,List<BookEntity>>> fetchNewestBooks() ;

}