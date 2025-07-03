import 'package:flutter/material.dart';
import 'package:s0ck_teacher/submodule/constants/color.dart';
import 'package:s0ck_teacher/views/home/home_page.dart';
import 'package:s0ck_teacher/views/page_manager/page_manager_page.dart';
import 'package:s0ck_teacher/views/record/record_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: S0ckColor.gray50,
      ),
      home: PageManagerPage(),
    );
  }
}
