import 'package:e_com/pages/home_page.dart';
import 'package:e_com/pages/login_page.dart';
import 'package:e_com/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: LoginPage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.amber),
      initialRoute: Routes.loginRoute,
      routes: {
        Routes.homeRoute: (contex) => HomePage(),
        Routes.loginRoute: (contex) => LoginPage(),
      },
    );
  }
}
