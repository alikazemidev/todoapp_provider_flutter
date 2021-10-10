import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              TextField(
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
                autofocus: true,
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                height: 50,
                color: Colors.lightBlue,
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
                  Navigator.pop(context);
                },
                child: const Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
