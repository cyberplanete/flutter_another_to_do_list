class Tache {
  bool isCompleted;
  final String tacheTexte;

  Tache({this.isCompleted = false, this.tacheTexte});

  void toggleDone() {
    isCompleted = !isCompleted;
  }
}
