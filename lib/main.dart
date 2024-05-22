import 'package:flutter/material.dart';
import 'package:zodiac_sign_guesser/views/home.dart';
import 'views/loading.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoadingPage(),
      routes: {
        '/loading/': (context) => const LoadingPage(),
        '/home/': (context) => const HomePage(),
      },
    );
  }
}
