import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'buy bread'),
    Task(name: 'buy milk'),
    Task(name: 'go to gym'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    // _tasks.remove(task);
    notifyListeners();
  }
}
