import 'package:bookly/core/failures/failures.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> fetchSimilerBooks(
      {required String category});
  Future<Either<Failures, List<BookModel>>> getSearchBooks({
    required String query,
  });
}
