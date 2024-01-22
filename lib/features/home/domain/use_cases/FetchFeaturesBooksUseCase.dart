
import 'package:dartz/dartz.dart';

import '../../../../core/errors/Failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/BookEntity.dart';
import '../repositories/HomeRepo.dart';

class FetchFeaturesBooksUseCase extends UseCase<List<BookEntity>,int>{

  final HomeRepo homeRepo;
  FetchFeaturesBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int? param]) async{
   return await homeRepo.fetchFeaturedBooks(
     pageNumber: param!
   );
  }

}


