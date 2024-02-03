
import 'package:books_app/core/utils/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/widgets/customm_error_widget.dart';
import '../../view_models/newset_books_cubit/newset_books_cubit.dart';
import 'newset_books_list_item.dart';

class NewsetBooksList extends StatelessWidget {
  const NewsetBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if(state is NewsetBooksFailure){
          return  CustomErrorWidget(errorMessage: state.errorMessage,);
        }else if(state is NewsetBooksSuccess){
        return SliverList.separated(
          itemCount: 12,
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: NewsetBooksListItem(book: state.books[index],),
          ),
        );}
        else{
          
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
