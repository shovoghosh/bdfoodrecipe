import 'package:flutter/material.dart';
import 'package:bdfoodrecipe/screens/home/home.dart';
import 'package:bdfoodrecipe/screens/details/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BD Food Recipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (ctx) => const HomeScreen(),
        DetailScreen.path: (ctx) => const DetailScreen(),
      },
    );
  }
}
