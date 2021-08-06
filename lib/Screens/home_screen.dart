import 'package:flutter/material.dart';
import 'package:onepack/Models/FuncList.dart';
import 'package:onepack/Widgets/Widgets.dart';
import 'package:onepack/Widgets/side_menu.dart';
import 'package:onepack/global/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(defaultPadding),
                color: bgColor,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Dashboard',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          Container(
                              child: Text(
                            "12:000",
                            style: Theme.of(context).textTheme.headline6,
                          ))
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: defaultPadding,
                          mainAxisSpacing: defaultPadding,
                          childAspectRatio: 1.0,
                        ),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/${funcListTitle[index]}');
                          },
                          child: CustomButtons.funcButtons(
                            title: funcListTitle[index],
                            iconPath: funcListIcon[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
