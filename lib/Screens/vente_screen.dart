import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:onepack/Widgets/popUp.dart';
import 'package:onepack/Widgets/side_menu.dart';
import 'package:onepack/global/constants.dart';

class VenteScreen extends StatefulWidget {
  VenteScreen({Key? key}) : super(key: key);

  @override
  _VenteScreenState createState() => _VenteScreenState();
}

class _VenteScreenState extends State<VenteScreen> {
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
                      "Historique des Ventes",
                      style: TextStyle(fontSize: 20),
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
                            label: Text("Référence commande"),
                          ),
                          DataColumn(
                            label: Text("Montant (DT)"),
                          ),
                          DataColumn(
                            label: Text("Serveur"),
                          ),
                        ],
                        rows: List<DataRow>.generate(
                          numItems,
                          (int index) => DataRow(
                            cells: <DataCell>[
                              DataCell(
                                Text('$index'),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        PopUp.buildPopupDialogTable(
                                      context,
                                      'Details de la commande',
                                      'liste des produits',
                                    ),
                                  );
                                },
                              ),
                              DataCell(Text('AF,fgbh')),
                              DataCell(Text('Sucre')),
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
