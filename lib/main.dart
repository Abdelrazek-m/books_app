import 'package:books_app/constants.dart';
import 'package:books_app/features/splach/presentation/views/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kMainColor,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const SplachView(),
    );
  }
}
