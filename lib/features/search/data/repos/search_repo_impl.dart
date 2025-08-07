import 'package:bookly/core/failures/failures.dart';
import 'package:bookly/core/utils/services/api_services.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this.apiServices);
  ApiServices apiServices;
  @override
  Future<Either<Failures, List<BookModel>>> getSearchBook(
      {required String q}) async {
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=$q');
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
