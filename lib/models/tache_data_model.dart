import 'dart:collection';

import 'package:flutter/material.dart';

import 'tache_model.dart';

class TacheData extends ChangeNotifier {
  int lenght = 0;

  List<Tache> _tachesList = [
    Tache(tacheTexte: 'Apprendre flutter'),
    Tache(tacheTexte: 'Apprendre Kotlin'),
    Tache(tacheTexte: 'Contacter avocat'),
    Tache(tacheTexte: 'Activation ligne Free'),
  ];

  void addTache(Tache tache) {
    _tachesList.add(tache);

    notifyListeners();
  }

  int get nombreTaches {
    return _tachesList.length;
  }

  ///An unmodifiable [List] view of another List.
  UnmodifiableListView<Tache> get taches {
    return UnmodifiableListView(_tachesList);
  }
}
