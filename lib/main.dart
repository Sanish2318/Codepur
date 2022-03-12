import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'screens/home_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
            fontFamily: GoogleFonts.lato().fontFamily,
            primarySwatch: Colors.deepOrange,
            primaryTextTheme: GoogleFonts.latoTextTheme()),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: {
          "/login": (context) => LoginPage(),
        });
  }
}
