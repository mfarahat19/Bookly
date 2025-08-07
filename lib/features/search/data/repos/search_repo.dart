import 'package:bookly/core/failures/failures.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> getSearchBook({
    required String q,
  });
}
