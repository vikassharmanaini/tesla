import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tesla_app/sarter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            splashColor: Colors.white,
          ),
          primaryColor: Color(0xFF000000),
          primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: Starter(),
    );
  }
}
