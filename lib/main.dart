import 'package:flutter/material.dart';
import 'package:thegoodbotps/screens/home_screen.dart';
import 'package:thegoodbotps/screens/info_screen.dart';
import 'package:thegoodbotps/screens/chat_screen.dart';
import 'package:thegoodbotps/screens/guia_screen.dart';
import 'package:thegoodbotps/screens/ajuda_screen.dart';
import 'package:thegoodbotps/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/home_screen': (context) => HomeScreen(),
          '/help_screen': (context) => AjudaScreen(),
          '/info_screen': (context) => InfoScreen(),
          '/guide_screen': (context) => GuiaScreen(),
          '/chat_screen': (context) => HomePageDialogflow(),

        });
  }
}