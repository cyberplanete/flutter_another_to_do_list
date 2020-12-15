import 'package:flutter/material.dart';

import 'titre_tache.dart';

class ListeTaches extends StatelessWidget {
  const ListeTaches({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [LigneTache(), LigneTache(), LigneTache(), LigneTache()],
    );
  }
}
