import 'package:flutter/material.dart';
import 'package:flutter_another_to_do_list/models/taches.dart';

import 'Ligne_tache.dart';

class ListeTaches extends StatefulWidget {
  @override
  _ListeTachesState createState() => _ListeTachesState();
}

class _ListeTachesState extends State<ListeTaches> {
  List<Tache> tachesList = [
    Tache(tacheTexte: 'Apprendre flutter'),
    Tache(tacheTexte: 'Apprendre Kotlin'),
    Tache(tacheTexte: 'Contacter avocat'),
    Tache(tacheTexte: 'Activation ligne Free'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LigneTache(
          titreTache: tachesList[0].tacheTexte,
          isChecked: tachesList[0].isCompleted,
        ),
        LigneTache(
          titreTache: tachesList[1].tacheTexte,
          isChecked: tachesList[1].isCompleted,
        ),
        LigneTache(
          titreTache: tachesList[2].tacheTexte,
          isChecked: tachesList[2].isCompleted,
        ),
        LigneTache(
          titreTache: tachesList[3].tacheTexte,
          isChecked: tachesList[3].isCompleted,
        )
      ],
    );
  }
}
