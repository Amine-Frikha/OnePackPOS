import 'package:flutter/material.dart';
import 'package:onepack/Models/FuncListDashboard.dart';
import 'package:onepack/Widgets/custom_widgets.dart';
import 'package:onepack/Widgets/side_menu.dart';
import 'package:onepack/global/constants.dart';

class PersonnelScreen extends StatefulWidget {
  const PersonnelScreen({Key? key}) : super(key: key);

  @override
  _PersonnelScreenState createState() => _PersonnelScreenState();
}

class _PersonnelScreenState extends State<PersonnelScreen> {
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
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gestion de personnel",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 2,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: defaultPadding,
                          mainAxisSpacing: defaultPadding,
                          childAspectRatio: 1.0,
                        ),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context,
                                '/${funcListPersonnelTitle[index]}'
                                    .replaceAll(' ', '-'));
                          },
                          child: CustomWidgets.funcButtons(
                            title: funcListPersonnelTitle[index],
                            iconPath: funcListPersonnelIcon[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
