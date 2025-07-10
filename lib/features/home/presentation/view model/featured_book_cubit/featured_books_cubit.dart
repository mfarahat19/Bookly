import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/view%20model/featured_book_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  HomeRepo homeRepo;
  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(
        FeaturedBooksErrorState(failure.errorMessage),
      ),
      (books) => FeaturedBooksSuccessState(books),
    );
  }
}
