import 'package:dio/dio.dart';

abstract class Fialures {
  final String errorMessage;
  const Fialures(this.errorMessage);
}

class ServerFialures extends Fialures {
  ServerFialures(super.errorMessage);

  factory ServerFialures.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFialures('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFialures('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFialures('Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFialures('please check your connection');
      case DioExceptionType.badResponse:
        return ServerFialures.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        ServerFialures('Request Cancelled');
      case DioExceptionType.connectionError:
        return ServerFialures('Connection Error');
      case DioExceptionType.unknown:
        return ServerFialures('Unknown Error');
    }
    return ServerFialures('An unexpected error occurred');
  }

  factory ServerFialures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFialures(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFialures('The requested resource was not found');
    } else if (statusCode == 500) {
      return ServerFialures('Internal Server Error');
    } else if (statusCode == 503) {
      return ServerFialures('Service Unavailable');
    } else if (response.toString().contains('SocketException')) {
      return ServerFialures('No internet connection');
    }
    return ServerFialures('An unexpected error occurred');
  }
}
