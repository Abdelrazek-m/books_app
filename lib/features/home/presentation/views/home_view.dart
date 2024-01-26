// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_list_books_item.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/custom_v_list_item.dart';
import 'widgets/horizontal_books_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            CustomAppBar(),
            SizedBox(height: 30),
            HBooksListView(),
            SizedBox(height: 60),
            Text(
              'Best Seller',
              style: Styles.titleMedium,
            ),
            SizedBox(height: 30),
            ListView.separated(
                itemBuilder: (context, index) => CustomVListItem(),
                separatorBuilder: (context,index)=>SizedBox(height: 10,),
                itemCount: 12),
            
          ],
        ),
      ),
    );
  }
}
