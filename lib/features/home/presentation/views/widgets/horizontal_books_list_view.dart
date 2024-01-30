
import 'package:books_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router/routers_names.dart';
import 'book_image.dart';

class HBooksListView extends StatelessWidget {
  const HBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 12,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.go(RouterNames.rBookDetailsView),
        child: const BookImage(
          imageUrl: testImage,
        ),
      ),
      separatorBuilder: (context, index)=> const SizedBox(width: 20),
    );
  }
}