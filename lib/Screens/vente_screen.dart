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
                          "Historique Des Ventes",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor.withOpacity(0.9),
                            primary: primaryColor,
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            _selectDate(context);
                          },
                          child: Text(
                            "date de debut",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor.withOpacity(0.9),
                            primary: primaryColor,
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            _selectDate(context);
                          },
                          child: Text(
                            "date de fin",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search),
                                hintText: 'Recherche...'),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Container(
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
                              label: Text("Date"),
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
                                          PopUp.buildPopupDialog(
                                        context,
                                        1,
                                        'Details de la commande',
                                        'liste des produits',
                                      ),
                                    );
                                  },
                                ),
                                DataCell(Text('AF,fgbh')),
                                DataCell(Text('AF,fgbh')),
                                DataCell(Text('Sucre')),
                              ],
                            ),
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

  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}
