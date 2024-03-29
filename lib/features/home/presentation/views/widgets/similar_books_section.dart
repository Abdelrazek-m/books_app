import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'feature_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle20
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        const SizedBox(height: 16),
        SizedBox(
            height: MediaQuery.of(context).size.width * .25,
            child: const FeatureBooksListView())
      ],
    );
  }
}
