import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Tableau de bord",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Calculatrice",
            svgSrc: "assets/icons/calcul.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Notes",
            svgSrc: "assets/icons/notes.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Se Déconnecter",
            svgSrc: "assets/icons/logout.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Color(0xFF18184E),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Color(0xFF18184E)),
      ),
    );
  }
}
