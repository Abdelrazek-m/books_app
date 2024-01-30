
// ignore_for_file: prefer_const_constructors

import 'package:books_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router/routers_names.dart';
import '../../../../../core/utils/styles.dart';
import 'book_image.dart';
import 'custom_reating.dart';

class CustomVListItem extends StatelessWidget {
  const CustomVListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(RouterNames.rBookDetailsView),
      child: Row(
        children: const [
          SizedBox(
            height: 130,
            child:
                BookImage(imageUrl: testImage),
          ),
          SizedBox(width: 30),
          Expanded(
              
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ), 
                Text('J.K Rowling', style: Styles.textStyle16), 
                Row(children: [
                        Text('19.99 €', style: Styles.textStyles18), 
                        Spacer(),
                  CustomReating(),
                  
                ],)
              ],
            ),
          ),
          SizedBox(width: 35),
        ],
      ),
    );
  }
}

