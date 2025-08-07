import 'package:bookly/core/utils/services/api_services.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/view%20model/similer_book_cubit/similer_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksStates> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitialState());
  HomeRepo homeRepo;
  Future<void> getSimilerBooks() async {
    emit(SimilerBooksLoadingState());
    var result = await homeRepo.fetchSimilerBooks(category: 'category');
    result.fold((failure) {
      emit(SimilerBooksErrorState(failure.errorMessage));
    }, (books) {
      emit(SimilerBooksSuccessState(books));
    });
  }
}
