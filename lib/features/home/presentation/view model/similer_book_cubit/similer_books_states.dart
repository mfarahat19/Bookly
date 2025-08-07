import 'package:bookly/features/home/data/models/Book_model.dart';

abstract class SimilerBooksStates {}

class  SimilerBooksInitialState extends SimilerBooksStates {}

class  SimilerBooksLoadingState extends SimilerBooksStates {}

class  SimilerBooksSuccessState extends SimilerBooksStates {
  final List<BookModel> books;
  SimilerBooksSuccessState(this.books);
}

class  SimilerBooksErrorState extends SimilerBooksStates {
  final String errorMessage;
  SimilerBooksErrorState(this.errorMessage);
}
