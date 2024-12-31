import 'package:flutter/material.dart';
import 'package:flutter_toon/screens/home_screen.dart';

void main() {
  runApp(const App());
}

// This widget is the root of your application.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
