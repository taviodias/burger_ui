import 'package:burger_ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(color: Colors.blueGrey[800], centerTitle: true),
        bottomAppBarColor: Colors.blueGrey[800],
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.blueGrey),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
