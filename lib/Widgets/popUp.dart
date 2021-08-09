import 'package:flutter/material.dart';
import 'package:onepack/global/constants.dart';

class PopUp {
  static Widget buildPopupDialogTable(
    BuildContext context,
    String title,
    String text,
  ) {
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(text),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Fermer'),
        ),
      ],
    );
  }

  static Widget buildPopupDialogFormAchat(
    BuildContext context,
  ) {
    // final _formKey = GlobalKey<FormState>();
    return SimpleDialog(
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.32,
          child: Form(
            // key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Fournisseur',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Adresse Fournisseur',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Num Tele Fournisseur',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Produits',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Quantité Acheté',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Prix Unitaire',
                  ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor.withOpacity(0.9),
                    primary: primaryColor,
                    textStyle: const TextStyle(fontSize: 17),
                  ),
                  child: Text(
                    "Ajouter",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // if (_formKey.currentState.validate()) {
                    //   _formKey.currentState.save();
                    // }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget buildPopupDialogFormStock(
    BuildContext context,
  ) {
    // final _formKey = GlobalKey<FormState>();
    return SimpleDialog(
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.32,
          child: Form(
            // key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Catégorie',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Sous-catégorie',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Quantité',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Prix Unitaire de vente',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor.withOpacity(0.9),
                      primary: primaryColor,
                      textStyle: const TextStyle(fontSize: 17),
                    ),
                    child: Text(
                      "Ajouter",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      // if (_formKey.currentState.validate()) {
                      //   _formKey.currentState.save();
                      // }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
