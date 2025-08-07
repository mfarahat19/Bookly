import 'package:bookly/core/failures/failures.dart';
import 'package:bookly/core/utils/services/api_services.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiServices);
  ApiServices apiServices;
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=programming');
      List<BookModel> books = [];
      if (data['items'] != null) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      }
      return left(ServerFailures('No books found'));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioException(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=programming');
      List<BookModel> books = [];
      if (data['items'] != null) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      }
      return left(ServerFailures('No books found'));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioException(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilerBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?q=programming&Soring=relevance');
      List<BookModel> books = [];
      if (data['items'] != null) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      }
      return left(ServerFailures('No books found'));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioException(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> getSearchBooks({
    required String query,
  }) async {
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=$query');
      List<BookModel> books = [];
      if (data['items'] != null) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      }
      return left(ServerFailures('No books found'));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioException(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }
}
