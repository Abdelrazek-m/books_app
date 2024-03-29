import 'package:books_app/core/utils/router/routers_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import 'slider_text.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});
  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimaiton;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    Future.delayed(Duration(seconds: 2), ()=>context.go(RouterNames.rHomeView));
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


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
          SliderText(
              animationController: animationController,
              slidingAnimaiton: slidingAnimaiton)
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimaiton =
        Tween<Offset>(begin: const Offset(0, 10), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }
}
