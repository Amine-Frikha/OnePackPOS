import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:onepack/Widgets/popUp.dart';
import 'package:onepack/Widgets/side_menu.dart';
import 'package:onepack/global/constants.dart';

class LogServeurScreen extends StatefulWidget {
  LogServeurScreen({Key? key}) : super(key: key);

  @override
  _LogServeurScreenState createState() => _LogServeurScreenState();
}

class _LogServeurScreenState extends State<LogServeurScreen> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          "Log Des serveurs",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
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
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        columnSpacing: defaultPadding,
                        minWidth: 600,
                        columns: [
                          DataColumn(
                            label: Text("Serveur"),
                          ),
                          DataColumn(
                            label: Text("Session"),
                          ),
                          DataColumn(
                            label: Text("Revenu"),
                          ),
                          DataColumn(
                            label: Text("Stock Consommé"),
                          ),
                        ],
                        rows: List<DataRow>.generate(
                          numItems,
                          (int index) => DataRow(
                            cells: <DataCell>[
                              DataCell(Text('$index')),
                              DataCell(
                                Text('$index'),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        PopUp.buildPopupDialog(
                                      context,
                                      1,
                                      'Details de la session',
                                      'Debut- Fin-',
                                    ),
                                  );
                                },
                              ),
                              DataCell(Text('Sucre')),
                              DataCell(
                                Text('Stock$index'),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        PopUp.buildPopupDialog(
                                      context,
                                      1,
                                      'Stocks consommés',
                                      'liste des produits',
                                    ),
                                  );
                                },
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
