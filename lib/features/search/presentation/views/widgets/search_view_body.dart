import 'package:books_app/features/home/presentation/view_models/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/newset_books_list_item.dart';
import 'custom_text_field.dart';

class SeasrchViewBody extends StatelessWidget {
  const SeasrchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextField(),
          const SizedBox(height: 16),
          const Text(
            'Search Resualt',
            style: Styles.textStyles18,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
              builder: (context, state) {
                if(state is NewsetBooksLoading){
          return const CircularProgressIndicator();
        }else if(state is NewsetBooksSuccess){
                return ListView.separated(
                  itemCount: 12,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemBuilder: (context, index) =>  NewsetBooksListItem(book: state.books[index],   ),
                );}else{
                  return const Text('error on loading');
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
