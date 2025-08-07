import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;
  const Failures(this.errorMessage);
}

class ServerFailures extends Failures {
  ServerFailures(super.errorMessage);

  factory ServerFailures.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailures('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailures('Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailures('please check your connection');
      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        ServerFailures('Request Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailures('Connection Error');
      case DioExceptionType.unknown:
        return ServerFailures('Unknown Error');
    }
    return ServerFailures('An unexpected error occurred');
  }

  factory ServerFailures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailures(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailures('The requested resource was not found');
    } else if (statusCode == 500) {
      return ServerFailures('Internal Server Error');
    } else if (statusCode == 503) {
      return ServerFailures('Service Unavailable');
    } else if (response.toString().contains('SocketException')) {
      return ServerFailures('No internet connection');
    }
    return ServerFailures('An unexpected error occurred');
  }
}
