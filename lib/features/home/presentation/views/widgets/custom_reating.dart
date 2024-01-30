import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomReating extends StatelessWidget {
  const CustomReating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          
        mainAxisSize: MainAxisSize.min,
        children: [ 
          IconButton(onPressed: (){}, icon: const Icon(Icons.star, color: Colors.yellow,size: 22,)), 
          Text('4.8', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold, color: Colors.white)), 
          const Text(' (2390)', style: Styles.textStyle14), 
        ],
      );
  }
}
