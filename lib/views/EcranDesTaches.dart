import 'package:flutter/material.dart';
import 'package:flutter_another_to_do_list/Widgets/widget_liste_taches.dart';
import 'package:flutter_another_to_do_list/models/tache_data_model.dart';
import 'package:flutter_another_to_do_list/views/EcranAjoutTache.dart';
import 'package:provider/provider.dart';

class EcranDesTaches extends StatelessWidget {
  final bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          /// showModalBottomSheet() est utilisée pour créer et afficher
          /// un Dialog (boîte de dialogue) contenant une bottom-sheet, qui flotte au-dessus
          /// de tous les autres éléments de l'application
          showModalBottomSheet(
              /*     TODO Code permettant de gerer l'ecran modal sur petit ecran
              Pour certaines tailles d'écran, cela peut signifier que le bouton Ajouter est masqué.
             En définissant la propriété isScrolledControlled sur true, le modal occupe le plein écran:
                         onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => SingleChildScrollView(
                        child:Container(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddTaskScreen(),
                        )
                    )
                );
              }*/
              context: context,
              builder: (context) {
                //Callback - Reception de la nouvelle tache, puis mise à jour des states
                return EcranAjoutTache();
              });
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 30),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'An AnotherToDoList',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  //${tachesList.length}
                  '${Provider.of<TacheData>(context).nombreTaches} tâches restantes',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListeTaches(),
            ),
          ),
        ],
      ),
    );
  }
}
