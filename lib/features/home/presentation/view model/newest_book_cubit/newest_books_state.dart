part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksStates {}

final class NewestBooksInitial extends NewestBooksStates {}

final class NewestBooksLoading extends NewestBooksStates {}

final class NewestBooksSuccess extends NewestBooksStates {
  final List<BookModel> books;
  NewestBooksSuccess(this.books);
}

final class NewestBooksError extends NewestBooksStates {
  final String errorMessage;
  NewestBooksError(this.errorMessage);
}
