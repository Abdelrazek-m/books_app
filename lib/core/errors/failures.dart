import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMassege;

  Failure( this.errorMassege);
}

class ServerFailure extends Failure{
  ServerFailure( super.errorMassege);

  factory ServerFailure.fromDioException(DioException dioException){
    switch(dioException.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(dioException.response!.data['error']['message']);
      case DioExceptionType.badResponse:
        return ServerFailure(dioException.response!.data['error']['message']);
      case DioExceptionType.cancel:
        return ServerFailure('requst canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('connection error, please try again letar');
      case DioExceptionType.unknown:
        return ServerFailure('unexpected error, please try again!');
    }
  }

}

