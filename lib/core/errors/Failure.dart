
import 'package:dio/dio.dart';

abstract class Failure{
  final String error;

  Failure(this.error);
}
class ServerFailure extends Failure{
  ServerFailure(super.error);

  factory ServerFailure.fromDioError(DioException error)
  {
    switch (error.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure('connectionTimeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('sendTimeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receiveTimeout with api server');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate with api server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(error.response?.statusCode, error.response?.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to api was canceled ');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps There were an unknown error,please try again');
    }
  }

  factory ServerFailure.fromBadResponse(int? statusCode, dynamic response){
    if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure('There is a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('There was an error , please try again');
    }
  }
}