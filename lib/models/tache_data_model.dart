import 'package:flutter/material.dart';

import 'tache_model.dart';

class TacheData extends ChangeNotifier {
  int lenght = 0;

  List<Tache> tachesList = [
    Tache(tacheTexte: 'Apprendre flutter'),
    Tache(tacheTexte: 'Apprendre Kotlin'),
    Tache(tacheTexte: 'Contacter avocat'),
    Tache(tacheTexte: 'Activation ligne Free'),
  ];

  void addTask(Tache tache) {
    tachesList.add(tache);

    notifyListeners();
  }

  int get nombreTaches {
    return tachesList.length;
  }
}
