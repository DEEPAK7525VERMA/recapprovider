//taskscreen.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/widgets/tasklist.dart';
import 'package:todo/widgets/tasktile.dart';
import 'package:todo/screens/addtasksscreen.dart';
class TasksScreen extends StatelessWidget {
  Widget buildButtonSheet(BuildContext context){
    return AddTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      child:Icon(Icons.add),
      onPressed:(){
        showModalBottomSheet(context:context,builder:buildButtonSheet);
      },
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child:Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top:50,left:15,bottom:10,right:10),
                  child: CircleAvatar(
                    radius:40,
                    child: Icon(Icons.list,
                    size:50,
                  color:Colors.lightBlueAccent)),
                ),
          
                 Padding(
                   padding: const EdgeInsets.only(left:15),
                   child: Text("Todo",
                   style:TextStyle(
                    fontWeight: FontWeight.w700,
                             
                    color: Colors.white,
                    fontSize: 45
                   ),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:0.0,bottom:10.0),
                   child: Text('12 tasks',
                   style:TextStyle(
                    
                             
                    color: Colors.white,
                    
                   ),),
                 ),
            ],),),
       Expanded(
         child: Container(
          height:100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
          ),
          child:TasksList(),
          
         ),
       )
        ],
       
      ),);
  }
}



