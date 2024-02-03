import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'widgets/newset_books_list.dart';
import 'widgets/feature_books_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: FeatureBooksSection()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Best Seller',
                style: Styles.textStyles18,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 30)),
          NewsetBooksList()
        ],
      ),
    );
  }
}

