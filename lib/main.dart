import 'package:flutter/material.dart';
import 'package:tez_tabuu/pages/ItemPage.dart';
import 'package:tez_tabuu/pages/Spleshcreen.dart';
import 'package:tez_tabuu/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "SpleshCreen": (context) => SpleshCreen(),
        "ItenPage": (context) => ItenPage()
      },
      // home: HomePage(),
    );
  }
}
