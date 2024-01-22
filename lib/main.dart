import 'package:booklyapp/core/utils/bloc_observer.dart';

import 'package:booklyapp/features/home/data/repositories/Home_Repo_Impl.dart';
import 'package:booklyapp/features/home/domain/entities/BookEntity.dart';
import 'package:booklyapp/features/home/domain/use_cases/FetchNewestBooksUseCase.dart';
import 'package:booklyapp/features/home/presentation/manager/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants.dart';
import 'core/functions/SetupServiceLocator.dart';
import 'core/utils/app_router.dart';
import 'features/home/domain/use_cases/FetchFeaturesBooksUseCase.dart';
import 'features/home/presentation/manager/NewestBooksCubit/newest_books_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();

  await Hive.openBox<BookEntity>(kFeaturedBox);
 await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer=MyBlocObserver();
  runApp(const BookApp());
}






class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(FetchFeaturesBooksUseCase(getIt.get<HomeRepoImpl>()))..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()));
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
