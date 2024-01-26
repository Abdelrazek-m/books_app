
import 'package:flutter/material.dart';

import 'custom_list_books_item.dart';

class HBooksListView extends StatelessWidget {
  const HBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) => CustomListBooksItem(
          imageUrl: 'assets/images/book2.png',
        ),
        separatorBuilder: (context, index)=> const SizedBox(width: 20),
      ),
    );
  }
}