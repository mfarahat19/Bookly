import 'package:bookly/core/fialures/fialures.dart';
import 'package:bookly/core/utils/services/api_services.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiServices);
  ApiServices apiServices;
  @override
  Future<Either<Fialures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFialures.fromDioException(e));
      }
    }

    throw UnimplementedError();
  }

  @override
  Future<Either<Fialures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFialures.fromDioException(e));
      }
    }
    throw UnimplementedError();
  }
}
