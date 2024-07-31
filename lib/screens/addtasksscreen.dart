import "package:flutter/material.dart";
class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
        Text("Add Tasks",
        style:TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          color:Colors.lightBlueAccent,
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autofocus: true,
          ),
        ),
        TextButton(onPressed:(){},
        style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
        child:Text("Add",
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 30,
          color:Colors.white,
        ),))

      ],)
    );
  }
}