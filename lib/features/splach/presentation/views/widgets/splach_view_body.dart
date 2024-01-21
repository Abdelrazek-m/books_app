import 'package:books_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * .1;
    return Container(
      padding: EdgeInsets.all(defaultSize * 2),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.kLogo),
          SizedBox(height: defaultSize * 1),
          const Text(
            'read books for free',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w200
            ),
          )
        ],
      ),
    );
  }
}
