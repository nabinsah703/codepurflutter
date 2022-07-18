import 'package:codepurflutter/home_page.dart';
import 'package:codepurflutter/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        "/": (context) => const LoginPage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
