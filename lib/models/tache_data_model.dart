import 'dart:collection';

import 'package:flutter/material.dart';

import 'tache_model.dart';

class TacheData extends ChangeNotifier {
  int lenght = 0;
  bool isSelected = false;
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

  bool get isSelectedTask {
    return isSelected;
  }

  ///An unmodifiable [List] view of another List.
  UnmodifiableListView<Tache> get taches {
    return UnmodifiableListView(_tachesList);
  }

  void updateTache(Tache tache) {
    tache.toggleDone();
    notifyListeners();
  }

  void updateSelected(Tache tache) {
    isSelected = !isSelected;
    tache.toggleSelected();
    notifyListeners();
  }

  void removeTask(Tache tache) {
    _tachesList.remove(tache);
    notifyListeners();
  }
}
