import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomReating extends StatelessWidget {
  const CustomReating({
    super.key, 
  });
  final double avgReating=0, reatingCount=0;
  @override
  Widget build(BuildContext context) {
    return Row(
          
        mainAxisSize: MainAxisSize.min,
        children: [ 
          IconButton(onPressed: (){}, icon: const Icon(Icons.star, color: Colors.yellow,size: 22,)), 
          Text(avgReating.toString(), style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold, color: Colors.white)), 
          Text(' $reatingCount', style: Styles.textStyle14), 
        ],
      );
  }
}
