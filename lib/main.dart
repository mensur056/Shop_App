import 'package:flutter/material.dart';
import 'package:shop_app/product/constant/theme.dart';

import 'feature/UI/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: ProjectTheme.ligthTheme,
      home: HomePage(),
    );
  }
}
