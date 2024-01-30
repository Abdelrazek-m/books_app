
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_image.dart';
import 'custom_reating.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * .42,
                      child: const BookImage(imageUrl: testImage)),
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(height: 6),
                const Opacity(
                    opacity: .7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styles.textStyles18,
                    )),
                const SizedBox(height: 16),
                const CustomReating(),],);
  }
}