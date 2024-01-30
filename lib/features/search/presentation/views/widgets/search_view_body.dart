import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/custom_v_list_item.dart';
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
            child: ListView.separated(
              itemCount: 12,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) => const CustomVListItem(),
            ),
          )
        ],
      ),
    );
  }
}
