import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/search/presentation/view%20model/search_book_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksCubit extends Cubit<SearchBooksStates> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitialState());
  HomeRepo homeRepo;
  Future<void> getSearchBooks({required String q}) async {
    emit(SearchBooksLoadingState());
    var result = await homeRepo.getSearchBooks(query: q);
    result.fold(
      (failure) => emit(
        SearchBooksErrorState(failure.errorMessage),
      ),
      (books) => emit(
        SearchBooksSuccessState(books),
      ),
    );
  }
}
