import "package:flutter/material.dart";
import "package:todo/widgets/tasktile.dart";

class TasksList extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
    TaskTile(),
    TaskTile(),
    TaskTile(), 
    ] ,);
  }
}