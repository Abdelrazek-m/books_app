
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {

    return  AspectRatio(
        aspectRatio: 2/3,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageUrl),
            ),
          ),
        ),
      
    );
  }
}
