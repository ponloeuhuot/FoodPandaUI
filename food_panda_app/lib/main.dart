import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:food_panda_app/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.pink,
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,

        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE91E63)),
            primarySwatch: Colors.pink,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Poppins')),
        darkTheme: ThemeData(
            primarySwatch: Colors.pink,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Poppins')),
        home: const MyHomePage(title: 'Flutter'));
  }
}

