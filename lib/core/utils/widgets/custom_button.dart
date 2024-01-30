
import 'package:flutter/material.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    this.borderRadius,
    required this.text,
    required this.textColor,
  });

  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          
            shape: RoundedRectangleBorder(
              
          borderRadius: borderRadius ?? BorderRadius.circular(12),
        )),
        child: Text(
          text,
          style: Styles.textStyles18.copyWith(
            color: textColor,
          ),
        ));
  }
}
