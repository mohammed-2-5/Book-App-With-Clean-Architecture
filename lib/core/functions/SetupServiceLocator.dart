import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/data_sources/home_local_data_source.dart';
import '../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../features/home/data/repositories/Home_Repo_Impl.dart';
import '../utils/api_services.dart';
final getIt=GetIt.instance;

void setupServiceLocator() {
   getIt.registerSingleton<ApiService>( ApiService(Dio()));
   getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
       homeLocalDataSource: HomeLocalDataSourceImpl(),
       homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>())));
}
