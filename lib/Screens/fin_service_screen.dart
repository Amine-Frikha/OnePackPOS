import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:onepack/Widgets/popUp.dart';
import 'package:onepack/Widgets/side_menu.dart';
import 'package:onepack/global/constants.dart';

class FinServiceScreen extends StatefulWidget {
  FinServiceScreen({Key? key}) : super(key: key);

  @override
  _FinServiceScreenState createState() => _FinServiceScreenState();
}

class _FinServiceScreenState extends State<FinServiceScreen> {
  static const int numItems = 10;
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
                      "Demandes de fin de service",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      color: secondaryColor,
                      child: DataTable2(
                        showCheckboxColumn: false,
                        dataTextStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                        headingTextStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        columnSpacing: defaultPadding,
                        minWidth: 600,
                        columns: [
                          DataColumn(
                            label: Text("Serveur"),
                          ),
                          DataColumn(
                            label: Text("Horaire"),
                          ),
                          DataColumn(
                            label: Text("Durée session"),
                          ),
                          DataColumn(
                            label: Text("Action"),
                          ),
                        ],
                        rows: List<DataRow>.generate(
                          numItems,
                          (int index) => DataRow(
                            cells: <DataCell>[
                              DataCell(Text('$index')),
                              DataCell(Text('AF,fgbh')),
                              DataCell(Text('Sucre')),
                              DataCell(
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.cancel_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
