import 'package:dartz/dartz.dart';

import '../../../../core/errors/Failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/BookEntity.dart';
import '../repositories/HomeRepo.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>,NoParam>{

  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
   return await homeRepo.fetchNewestBooks();
  }

}


