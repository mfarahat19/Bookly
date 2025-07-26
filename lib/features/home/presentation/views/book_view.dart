import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/presentation/view%20model/similer_book_cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilerBooksCubit>(context).getSimilerBooks();
  }

  @override
  Widget build(BuildContext context) {
    return BookDetailsBody(book: widget.book);
  }
}
