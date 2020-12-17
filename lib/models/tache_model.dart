import 'package:flutter/cupertino.dart';

class Tache extends ChangeNotifier {
  bool isCompleted;
  final String tacheTexte;

  Tache({this.isCompleted = false, this.tacheTexte});

  void toggleDone() {
    isCompleted = !isCompleted;
    notifyListeners();
  }
}
