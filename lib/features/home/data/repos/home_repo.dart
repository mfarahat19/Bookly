import 'package:bookly/core/fialures/fialures.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Fialures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Fialures, List<BookModel>>> fetchNewestBooks();
}
