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
        Form(
          // key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Fournisseur',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Adresse Fournisseur',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Num Tele Fournisseur',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Produits',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Quantité Acheté',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Prix Unitaire',
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
      ],
    );
  }

  static Widget buildPopupDialogFormStock(
    BuildContext context,
  ) {
    // final _formKey = GlobalKey<FormState>();
    return SimpleDialog(
      children: [
        Form(
          // key: _formKey,
          child: Column(
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
      ],
    );
  }
}
