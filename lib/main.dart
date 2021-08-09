import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onepack/Screens/calc_screen.dart';
import 'Screens/achat_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/note_screen.dart';
import 'Screens/stock_screen.dart';
import 'Screens/vente_screen.dart';
import 'global/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginScreen(),
        '/Home': (context) => HomeScreen(),
        '/Ventes': (context) => VenteScreen(),
        '/Achats': (context) => AchatScreen(),
        '/Notes': (context) => NoteScreen(),
        '/Calc': (context) => CalcApp(),
        '/Stock': (context) => StockScreen(),
        // '/Statistiques': (context) => StatScreen(),
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
