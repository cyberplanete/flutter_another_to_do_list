import 'package:flutter/material.dart';
import 'package:flutter_another_to_do_list/models/taches.dart';

import 'Ligne_tache.dart';

class ListeTaches extends StatefulWidget {
  @override
  _ListeTachesState createState() => _ListeTachesState();
}

class _ListeTachesState extends State<ListeTaches> {
  List<Tache> TachesList = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [LigneTache(), LigneTache(), LigneTache(), LigneTache()],
    );
  }
}
