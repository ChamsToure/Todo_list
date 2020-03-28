import 'package:flutter/material.dart';
import 'package:todo/widgets/tasks_list.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';




class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[400],
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => 
            AddTaskScreen(
            )
          );
          //New Input
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.red[400],
                    ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  ),
                  SizedBox(height: 10.0,),
                Text('ToDo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Aufgaben',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  )
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: new TasksList(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
                ),
              ),
            )
        ],
      ),
    );
  }
}

