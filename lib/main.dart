import 'package:crystal_container/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 81, 7, 209),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          bodySmall: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 12,
          ),
        ),
        useMaterial3: true,
      ),
      home: const SafeArea(child: Scaffold(body: LoginPage())),
    );
  }
}
