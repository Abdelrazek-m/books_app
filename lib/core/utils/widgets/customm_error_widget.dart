
import 'package:flutter/material.dart';

import '../styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key, required this.errorMessage,
  });
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage, style: Styles.textStyles18,);
  }
}