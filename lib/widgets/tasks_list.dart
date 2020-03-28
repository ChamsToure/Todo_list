import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';


class TasksList extends StatelessWidget {

  // Task addTask({String name, bool isDone}){
  //   var newTask = Task(name: name, isDone: false);
  //   tasks.add(newTask);
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name, 
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState){
                taskData.updateTask(task);
            },
            longPressCallback: (){
              taskData.deleteTask(task);
            },
              );
        }, 
        itemCount: taskData.taskCount,
      );
      },
    );
  }
}