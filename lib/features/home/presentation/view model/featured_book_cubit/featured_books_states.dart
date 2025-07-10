import 'package:bookly/features/home/data/models/Book_model.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> books;
  FeaturedBooksSuccessState(this.books);
}

class FeaturedBooksErrorState extends FeaturedBooksStates {
  final String errorMessage;
  FeaturedBooksErrorState(this.errorMessage);
}
