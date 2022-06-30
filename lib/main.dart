import 'package:burger_ui/screens/deatils/details_burger.dart';
import 'package:burger_ui/screens/home_screen/home_screen.dart';
import 'package:burger_ui/screens/new_home/new_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: ThemeData(
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(secondary: Colors.deepPurple),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        fontFamily: 'GothamPro',
      ),
      debugShowCheckedModeBanner: false,
      home: DetailsBurger(),
    );
  }
}
