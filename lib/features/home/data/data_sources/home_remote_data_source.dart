import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/api_services.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/BookEntity.dart';
import '../models/book_model.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) ;
  Future<List<BookEntity>> fetchNewestBooks() ;

}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{

   final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
   var data = await apiService.get(endPoint:'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}');
   List<BookEntity> books=getBooksList(data);

   saveBooksInHive(books,kFeaturedBox);
   return books;
  }
   List<BookEntity> getBooksList(Map<String, dynamic> data) {
     List<BookEntity> books = [];
     for (var bookMap in data['items']) {
       books.add(BookModel.fromJson(bookMap));
     }
     return books;
   }
  void saveBooksInHive(List<BookEntity> books,String boxName) {
     var box=Hive.box<BookEntity>(boxName);
     box.addAll(books);
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming&Sorting=newest');
    List<BookEntity> books=[];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    saveBooksInHive(books,kNewestBox);

    return books;
  }

}