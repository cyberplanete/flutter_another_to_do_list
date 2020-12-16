import 'package:flutter/material.dart';
import 'package:flutter_another_to_do_list/Widgets/Ligne_tache.dart';
import 'package:flutter_another_to_do_list/models/tache_model.dart';

class ListeTaches extends StatefulWidget {
  List<Tache> tachesList;
  //Utiliser dans le cas d'un StatelessWidget
  Function callBackUpdateListTask;
  ListeTaches({this.tachesList, this.callBackUpdateListTask});

  @override
  _ListeTachesState createState() => _ListeTachesState();
}

class _ListeTachesState extends State<ListeTaches> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return LigneTache(
          titreTache: widget.tachesList[index].tacheTexte,
          isChecked: widget.tachesList[index].isCompleted,
          checkBoxCallBack: (value) {
            setState(() {
              widget.tachesList[index].toggleDone();
            });

            //widget.callBackUpdateListTask(index);
          },
        );
      },
      itemCount: widget.tachesList.length,
    );
  }
}

/*class ListeTaches extends StatelessWidget {
  List<Tache> tachesList;
  Function callBackUpdateListTask;
  ListeTaches({this.tachesList, this.callBackUpdateListTask});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return LigneTache(
          titreTache: tachesList[index].tacheTexte,
          isChecked: tachesList[index].isCompleted,
          checkBoxCallBack: (value) {
            //tachesList[index].toggleDone();
            callBackUpdateListTask(index);
          },
        );
      },
      itemCount: tachesList.length,
    );
  }
}*/
