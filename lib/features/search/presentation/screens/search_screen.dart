import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/widgets/search_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                  hintText: 'Search',
                  hintStyle: style18().copyWith(fontSize: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Search result',
                style: style18(),
              ),
            ),
            Expanded(child: SearchList()),
          ],
        ),
      ),
    );
  }
}
