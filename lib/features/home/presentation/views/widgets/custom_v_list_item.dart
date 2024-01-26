
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_list_books_item.dart';

class CustomVListItem extends StatelessWidget {
  const CustomVListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 120,
          child:
              CustomListBooksItem(imageUrl: 'assets/images/book2.png'),
        ),
        const SizedBox(width: 30),
        SizedBox(
          height: 120,
          child: Expanded(
              
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.titleSmail,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ), 
                Text('J.K Rowling', style: Styles.subTitle), 
                Row(children: [ 
                  Text('19.99 €', style: Styles.titleMedium), 
                  const Spacer(), 
                  IconButton(onPressed: (){}, icon: Icon(Icons.star, color: Colors.yellow,size: 22,)), 
                  Text('4.8', style: Styles.smailBoldTitle), 
                  Text(' (2390)', style: Styles.smailSubTitle), 
                ],)
              ],
            ),
          ),
        ),
        const SizedBox(width: 30),
      ],
    );
  }
}
