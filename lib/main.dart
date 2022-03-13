import 'package:film_crew_nepal/screens/home_page.dart';
import 'package:film_crew_nepal/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
            fontFamily: GoogleFonts.lato().fontFamily,
            primarySwatch: Colors.deepOrange,
            primaryTextTheme: GoogleFonts.latoTextTheme()),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
        });
  }
}
