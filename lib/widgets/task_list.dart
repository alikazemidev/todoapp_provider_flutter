import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              ontap: () {
                if (task.isDone == true) {
                  taskData.deleteTask(index);
                }
              },
              logPress: () {
                taskData.deleteTask(index);
              },
              checkboxCallback: (context) => {
                taskData.updateTask(task),
              },
              taskTitle: task.name,
              isChecked: task.isDone,
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
