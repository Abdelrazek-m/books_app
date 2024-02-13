
import 'package:books_app/constants.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router/routers_names.dart';
import '../../../../../core/utils/styles.dart';
import 'book_image.dart';
import 'custom_reating.dart';

class NewsetBooksListItem extends StatelessWidget {
  const NewsetBooksListItem( {
    super.key, required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(RouterNames.rBookDetailsView),
      child: Row(
        children:  [
          SizedBox(
            height: 130,
            child:
                BookImage(imageUrl: book.volumeInfo?.imageLinks?.thumbnail??testImage),
          ),
          const SizedBox(width: 30),
          Expanded(
              
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  book.volumeInfo?.title??'',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ), 
                Text(book.volumeInfo!.authors?.first??'', style: Styles.textStyle16), 
                const Row(children: [
                        Text('Free', style: Styles.textStyles18), 
                        Spacer(),
                  CustomReating(),
                  
                ],)
              ],
            ),
          ),
          const SizedBox(width: 25),
        ],
      ),
    );
  }
}

