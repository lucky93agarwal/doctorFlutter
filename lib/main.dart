import 'package:drapplist/screen/home.dart';
import 'package:drapplist/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeModel().lightTheme,
      darkTheme: ThemeModel().darkTheme,
      home: HomeScreen(),
    );
  }
}
