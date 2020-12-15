import 'package:flutter/material.dart';

class LigneTache extends StatefulWidget {
  @override
  _LigneTacheState createState() => _LigneTacheState();
}

class _LigneTacheState extends State<LigneTache> {
  bool isChecked = false;

  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Texte de la tache',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: CheckboxOfTask(
        checkBoxState: isChecked,
        toogleCheckBoxStateFunction: checkBoxCallBack,
        // IDENTIQUE À:
        /*  toogleCheckBoxState: (bool checkBoxState) {
          setState(() {
            isChecked = checkBoxState;
          });
        },*/
      ),
    );
  }
}

class CheckboxOfTask extends StatelessWidget {
  final bool checkBoxState;
  final Function toogleCheckBoxStateFunction;

  CheckboxOfTask({this.checkBoxState, this.toogleCheckBoxStateFunction});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      //Je modifie la valeur sur chaque click.. true ou false
      onChanged: toogleCheckBoxStateFunction,
      //retourne la nouvelle valeur à mon callback
      value: checkBoxState,
    );
  }
}
