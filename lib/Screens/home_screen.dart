import 'package:flutter/material.dart';
import 'package:onepack/Models/FuncList.dart';
import 'package:onepack/Widgets/side_menu.dart';
import 'package:onepack/Widgets/custom_widgets.dart';
import 'package:onepack/global/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool tapped = false;
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
                              'Tableau de bord',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Color(0xFF18184E)),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding / 2),
                                  child: Text("12:00:00"),
                                ),
                              ],
                            ),
                          )
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
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/${funcListTitle[index]}');
                          },
                          child: CustomWidgets.funcButtons(
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
