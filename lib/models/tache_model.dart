import 'package:flutter/cupertino.dart';

class Tache extends ChangeNotifier {
  bool isCompleted;
  final String tacheTexte;
  bool isSelected;

  Tache({this.isCompleted = false, this.tacheTexte, this.isSelected = false});

  void toggleDone() {
    isCompleted = !isCompleted;
    notifyListeners();
  }

  void toggleSelected() {
    isSelected = !isSelected;
    notifyListeners();
  }
}
