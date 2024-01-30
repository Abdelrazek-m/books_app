import 'package:books_app/core/utils/router/routers_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.kLogo, height: 22),
        IconButton(
          icon: const Icon(
            Icons.search_rounded,
            size: 28,
          ),
          onPressed: () {
            context.go(RouterNames.rSearchView);
          },
        ),
      ],
    );
  }
}
