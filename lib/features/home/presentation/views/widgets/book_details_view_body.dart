
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'button_actions.dart';
import 'custom_book_details_appbar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:30.0),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ButtonAction(),
                  ),
                  Expanded(child: SizedBox(height: 40)),
                  SimilarBooksSection(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
