import 'package:flutter/material.dart';
import 'package:shop_app/global_variable.dart';
import 'package:shop_app/home_page.dart';
import 'package:shop_app/product_details_page.dart';

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
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(254, 206, 1, 1),
          primary: Color.fromRGBO(254, 206, 1, 1),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        useMaterial3: true,
      ),
      home: ProductDetailsPage(product: products[0]),
    );
  }
}
