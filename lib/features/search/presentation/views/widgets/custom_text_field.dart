import 'package:books_app/features/search/presentation/views/widgets/custom_input_border.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(Icons.search_rounded),
          ),
        ),
        enabledBorder: customInputBorder(),
        focusedBorder: customInputBorder(),
      ),
    );
  }
}
