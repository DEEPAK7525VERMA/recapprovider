//tasktile.dart
import "package:flutter/material.dart";
class TaskTile extends StatefulWidget {
 
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool ischecked=false;
  void changecheckbox(bool? newvalue){
     { 
    setState((){
     ischecked=newvalue??false;
      });
     };
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text("this is a task",
      style:TextStyle(
        decoration: ischecked?TextDecoration.lineThrough:TextDecoration.none,
      ),),
       trailing:
      TaskCheckBox(ischecked,changecheckbox),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) togglecheckbox;
  TaskCheckBox(this.checkboxState,this.togglecheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value:checkboxState, 
      onChanged:togglecheckbox,
    
    );
  }
}