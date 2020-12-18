import 'package:flutter/material.dart';

class LigneTache extends StatelessWidget {
  bool isChecked;
  final String titreTache;
  final Function checkBoxCallBack;
  final Function longPressCallBack;
  LigneTache(
      {this.isChecked,
      this.titreTache,
      this.checkBoxCallBack,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        titreTache,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        //Je modifie la valeur sur chaque click.. true ou false
        // onChanged: toogleCheckBoxStateFunction,
        //retourne la nouvelle valeur à mon callback
        value: isChecked, onChanged: checkBoxCallBack,
      ),
    );
  }
}
