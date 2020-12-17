import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_another_to_do_list/models/tache_data_model.dart';
import 'package:flutter_another_to_do_list/models/tache_model.dart';
import 'package:provider/provider.dart';

class EcranAjoutTache extends StatelessWidget {
  String nouvelleTache;

  //final Function addTaskCallBack;

  // EcranAjoutTache({this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Couleur du background copiée afin de pouvoir créer une forme arrondi sur le haut de mon ecran ajout de tache
      color: Color(0xff757575),
      child: Container(
        //Pour reduire la taille texfield et flatButton
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Ajouter une tâche',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            TextFormField(
              onChanged: (newText) {
                nouvelleTache = newText;
              },
              //Permet d'activer le clavier automatiquement
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2))),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Text('Ajouter'),
              onPressed: () {
                Provider.of<TacheData>(context, listen: false).addTask(Tache(
                  tacheTexte: nouvelleTache,
                ));
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
