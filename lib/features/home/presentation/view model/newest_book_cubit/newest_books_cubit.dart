import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;
  Future<void> getNewestBooks() async {
    emit(NewestBooksInitial());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (fialuer) => emit(
        NewestBooksError(fialuer.errorMessage),
      ),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
