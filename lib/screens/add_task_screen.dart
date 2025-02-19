import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Hinzufügen',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red[400]
              )
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text('Hinzufügen',
              style: TextStyle(color: Colors.white),),
              color: Colors.red[400],
              onPressed: (){
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              )
          ],
        ),
      ),
    );
  }
}