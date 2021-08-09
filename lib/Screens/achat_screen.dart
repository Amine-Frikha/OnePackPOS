import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:onepack/Widgets/popUp.dart';
import 'package:onepack/Widgets/side_menu.dart';
import 'package:onepack/global/constants.dart';

class AchatScreen extends StatefulWidget {
  const AchatScreen({Key? key}) : super(key: key);

  @override
  _AchatScreenState createState() => _AchatScreenState();
}

class _AchatScreenState extends State<AchatScreen> {
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
                      "Gestion Des Achats",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          color: secondaryColor,
                          child: DataTable2(
                            columnSpacing: defaultPadding,
                            minWidth: 600,
                            dataTextStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                            headingTextStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            columns: [
                              DataColumn(
                                label: Text("Fournisseur"),
                              ),
                              DataColumn(
                                label: Text("Date"),
                              ),
                              DataColumn(
                                label: Text("Produit"),
                              ),
                              DataColumn(
                                label: Text("Montant"),
                              ),
                              DataColumn(
                                label: Text("Balance"),
                              ),
                              DataColumn(
                                label: Text("Statut"),
                              ),
                              DataColumn(
                                label: Text("Action"),
                              ),
                            ],
                            rows: List<DataRow>.generate(
                              numItems,
                              (int index) => DataRow(
                                cells: <DataCell>[
                                  DataCell(
                                    Text('Fournisseur$index'),
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            PopUp.buildPopupDialogTable(
                                          context,
                                          'Details du fournisseur',
                                          'Nom : Prenom : Adresse :',
                                        ),
                                      );
                                    },
                                  ),
                                  DataCell(Text('Sucre')),
                                  DataCell(Text('732')),
                                  DataCell(Text('732')),
                                  DataCell(Text('732')),
                                  DataCell(
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        primary: primaryColor,
                                        textStyle:
                                            const TextStyle(fontSize: 17),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Payè',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.edit,
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
                                              Icons.delete,
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
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor.withOpacity(0.9),
                            primary: primaryColor,
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  PopUp.buildPopupDialogFormAchat(
                                context,
                              ),
                            );
                          },
                          child: Text(
                            'Ajouter un produit',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
