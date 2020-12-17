import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/tache_data_model.dart';
import 'views/EcranDesTaches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TacheData>(
      create: (context) => TacheData(),
      child: MaterialApp(
        home: EcranDesTaches(),
      ),
    );
  }
}
