
import 'package:books_app/core/utils/router/routers_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          context.go(RouterNames.rHomeView);
        }, icon: const Icon(Icons.close_rounded)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}