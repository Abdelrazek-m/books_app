
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'feature_books_list_view.dart';

class FeatureBooksSection extends StatelessWidget {
  const FeatureBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ 
        SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:30.0),
                child: CustomAppBar(),
              ),
              SizedBox(height: 30),
              SizedBox(height: 220, child: FeatureBooksListView()),
              SizedBox(height: 60),
      ],
    );
  }
}