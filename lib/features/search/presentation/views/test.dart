// import 'package:bookly/core/utils/styles.dart';
// import 'package:bookly/core/utils/widgets/loading_animated_widget.dart';
// import 'package:bookly/core/utils/widgets/message_error_widget.dart';
// import 'package:bookly/features/home/presentation/view%20model/newest_book_cubit/newest_books_cubit.dart';
// import 'package:bookly/features/home/presentation/views/widgets/search_list.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class SearchView extends StatelessWidget {
//   const SearchView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 80,
//               padding: const EdgeInsets.all(16),
//               child: TextField(
//                 decoration: InputDecoration(
//                   suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
//                   hintText: 'Search',
//                   hintStyle: style18().copyWith(fontSize: 15),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: const BorderRadius.all(Radius.circular(10)),
//                     borderSide: const BorderSide(color: Colors.white),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: const BorderRadius.all(Radius.circular(10)),
//                     borderSide: const BorderSide(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Text(
//                 'Search result',
//                 style: style18(),
//               ),
//             ),
//             BlocBuilder<NewestBooksCubit, NewestBooksStates>(
//               builder: (context, state) {
//                 if (state is NewestBooksLoading) {
//                   return LoadingAnamitedWidget();
//                 } else if (state is NewestBooksSuccess) {
//                   return Expanded(
//                       child: SearchList(
//                     books: state.books,
//                   ));
//                 } else if (state is NewestBooksError) {
//                   return MessageErrorWidget(
//                     error: state.errorMessage,
//                   );
//                 }
//                 return const SizedBox.shrink();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
