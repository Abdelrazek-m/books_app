import 'package:get/get.dart';

import '../../constants.dart';

void customNavagation({required dynamic page}) {
  Future.delayed(const Duration(seconds: 2), () {
    Get.to(
      page,
      transition: Transition.fade,
      duration: kDuration,
    );
  });
}
