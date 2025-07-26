import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/arrow_back_widget.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class search extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Search for books';
@override
  // TODO: implement searchFieldStyle
  TextStyle? get searchFieldStyle => style18();
  InputDecorationTheme? get searchFieldDecorationTheme => InputDecorationTheme(
      hintStyle: style18().copyWith(fontSize: 15, color: Colors.white),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),);
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          FontAwesomeIcons.xmark,
          color: Colors.white,
        ),
        onPressed: () {
          query = '';
        },
      ),
      IconButton(
        icon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.white,
        ),
        onPressed: () {
          showResults(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return ArrowBackWidget();
  }

  @override
  Widget buildResults(BuildContext context) {
    return SearchResultWidget(query: query,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // return SearchResultWidget(query: query,);
    return Column(
      children: [

      ],
    );
  }

}
