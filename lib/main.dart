import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primaryColor: const Color(0xFF0A0E21),
        canvasColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(
          primary: const Color(0xFF0A0E21),
          //secondary: Colors.green,
          seedColor: Colors.grey,
        ),
        useMaterial3: false,
      ),
      home: const InputPage(),
    );
  }
}
