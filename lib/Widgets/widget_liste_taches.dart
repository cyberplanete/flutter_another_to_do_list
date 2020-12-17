import 'package:flutter/material.dart';
import 'package:flutter_another_to_do_list/Widgets/widget_ligne_tache.dart';
import 'package:flutter_another_to_do_list/models/tache_data_model.dart';
import 'package:provider/provider.dart';

class ListeTaches extends StatefulWidget {
  // List<Tache> tachesList;
  //Utiliser dans le cas d'un StatelessWidget
  Function callBackUpdateListTask;
  // ListeTaches({this.tachesList, this.callBackUpdateListTask});
  ListeTaches({this.callBackUpdateListTask});

  @override
  _ListeTachesState createState() => _ListeTachesState();
}

class _ListeTachesState extends State<ListeTaches> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return LigneTache(
          titreTache:
              Provider.of<TacheData>(context).tachesList[index].tacheTexte,
          isChecked:
              Provider.of<TacheData>(context).tachesList[index].isCompleted,
          checkBoxCallBack: (value) {
            setState(() {
              Provider.of<TacheData>(context, listen: false)
                  .tachesList[index]
                  .toggleDone();
            });

            //widget.callBackUpdateListTask(index);
          },
        );
      },
      itemCount: Provider.of<TacheData>(context).tachesList.length,
    );
  }
}
