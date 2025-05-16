import 'package:flutter/material.dart';
import 'package:shop_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoppng App',
      theme: ThemeData(
        fontFamily: 'Lato',
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(254, 206, 1, 1),
        ),
      ),
      home: HomePage(),
    );
  }
}
