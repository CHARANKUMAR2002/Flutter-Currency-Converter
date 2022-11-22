import 'package:flutter/material.dart';
import 'convert.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Colors.black, useMaterial3: true),
      theme: ThemeData(brightness: Brightness.light, scaffoldBackgroundColor: Colors.white, useMaterial3: true),
      home: Convert(),
    );
  }
}