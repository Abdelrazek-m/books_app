import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_v_list_item.dart';
import 'widgets/home_view_top_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: HomeViewTopSection()),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Best Seller',
                style: Styles.textStyles18,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverList.separated(
            itemCount: 12,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomVListItem(),
            ),
          )
        ],
      ),
    );
  }
}
