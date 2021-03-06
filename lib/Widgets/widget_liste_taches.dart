import 'package:flutter/material.dart';
import 'package:flutter_another_to_do_list/Widgets/widget_ligne_tache.dart';
import 'package:flutter_another_to_do_list/models/tache_data_model.dart';
import 'package:provider/provider.dart';

class ListeTaches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TacheData>(
      builder: (context, tacheData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            var tache = tacheData.taches[index];
            return LigneTache(
              titreTache: tache.tacheTexte,
              isChecked: tache.isCompleted,
              checkBoxCallBack: (value) {
                //widget.callBackUpdateListTask(index);
                tacheData.updateTache(tache);
              },
              longPressCallBack: () {
                tacheData.updateSelected(tache);
                tacheData.removeTask(tache);
              },
            );
          },
          itemCount: tacheData.nombreTaches,
        );
      },
    );
  }
}
