import 'package:flutter/material.dart';
import 'package:onepack/Widgets/side_menu.dart';

class VenteScreen extends StatefulWidget {
  VenteScreen({Key? key}) : super(key: key);

  @override
  _VenteScreenState createState() => _VenteScreenState();
}

class _VenteScreenState extends State<VenteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 4,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
