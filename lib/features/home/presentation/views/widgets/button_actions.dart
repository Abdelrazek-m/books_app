import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    super.key,
    
  });
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: '19.99€',
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: 'Free preview',
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
