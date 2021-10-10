import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function()? logPress;
  final Function()? ontap;
  const TaskTile(
      {Key? key,
      this.taskTitle,
      this.isChecked,
      this.checkboxCallback,
      this.logPress,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: logPress,
      onTap: ontap,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
