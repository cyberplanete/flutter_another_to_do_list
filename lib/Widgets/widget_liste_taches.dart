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
            return LigneTache(
              titreTache: tacheData.tachesList[index].tacheTexte,
              isChecked: tacheData.tachesList[index].isCompleted,
              checkBoxCallBack: (value) {
                /* setState(() {
                Provider.of<TacheData>(context, listen: false)
                    .tachesList[index]
                    .toggleDone();
              });*/

                //widget.callBackUpdateListTask(index);
              },
            );
          },
          itemCount: tacheData.nombreTaches,
        );
      },
    );
  }
}
