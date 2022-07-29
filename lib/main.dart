import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/pages/introduction/introduction_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffe Shop',
      debugShowCheckedModeBanner: false,
      home: IntroductionPage()
    );
  }
}