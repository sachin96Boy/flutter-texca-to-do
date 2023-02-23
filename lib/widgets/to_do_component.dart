import 'package:flutter/material.dart';

import 'package:to_do_tecxa_mobile/model/todo_item.dart';

class ToDoComponent extends StatelessWidget {
  final ToDoItem todo;
  final Function ontoDoChanged;
  final Function onDeleteItem;
  const ToDoComponent(
      {super.key,
      required this.todo,
      required this.ontoDoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ListTile(
        onTap: () => ontoDoChanged(todo.id),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        tileColor: Colors.white,
        leading: Icon(
          todo.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.green,
        ),
        title: Text(
          todo.todoName,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12.0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18.0,
            icon: const Icon(Icons.delete),
            onPressed: () => onDeleteItem(todo.id),
          ),
        ),
      ),
    );
  }
}
