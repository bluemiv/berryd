import 'package:example/screens/button_screen.dart';
import 'package:example/screens/home_screen.dart';
import 'package:example/screens/typography_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berry Design',
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/button": (context) => const ButtonScreen(),
        "/typography": (context) => const TypographyScreen()
      },
    );
  }
}
