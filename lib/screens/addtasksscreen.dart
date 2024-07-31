import "package:flutter/material.dart";
class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text("Add Tasks",
          textAlign:TextAlign.center,
          style:TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 30,
            color:Colors.lightBlueAccent,
          ),
          ),
          TextField(
            autofocus: true,
          ),
          SizedBox(height:10),
          TextButton(onPressed:(){},
          style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
          child:Text("Add",
          style:TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 30,
            color:Colors.white,
          ),))
        
        ],),
      )
    );
  }
}