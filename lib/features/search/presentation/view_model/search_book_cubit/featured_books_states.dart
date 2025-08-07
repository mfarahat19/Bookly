import 'package:bookly/features/home/data/models/Book_model.dart';

abstract class SearchBooksStates {}

class SearchBooksInitialState extends SearchBooksStates {}

class SearchBooksLoadingState extends SearchBooksStates {}

class SearchBooksSuccessState extends SearchBooksStates {
  final List<BookModel> books;
  SearchBooksSuccessState(this.books);
}

class SearchBooksErrorState extends SearchBooksStates {
  final String errorMessage;
  SearchBooksErrorState(this.errorMessage);
}
