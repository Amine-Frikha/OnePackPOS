import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/home_screen.dart';
import 'Screens/vente_screen.dart';
import 'global/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomeScreen(),
        '/Ventes': (context) => VenteScreen(),
        // '/Achats': (context) => AchatScreen();
        // '/Stock': (context) => StockScreen();
        // '/Statistiques': (context) => StatScreen();
      },
      title: 'POS System',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        canvasColor: secondaryColor,
      ),
    );
  }
}
