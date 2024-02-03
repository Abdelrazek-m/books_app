import 'package:books_app/constants.dart';
import 'package:books_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/widgets/custom_progress_indicator.dart';
import '../../../../../core/utils/widgets/customm_error_widget.dart';
import '../../../../../core/utils/router/routers_names.dart';
import 'book_image.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage,);
        }  else if(state is FeatureBooksSuccess) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => context.go(RouterNames.rBookDetailsView),
              child: BookImage(
                imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail??testImage,
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          );
        }else {
          
          return const CustomProgressIndicator();
          
        }
      },
    );
  }
}
