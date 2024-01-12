// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.purple[800],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            //Checkbox
            Transform.scale(
              scale:
                  1.2, // Ajuste este valor para aumentar ou diminuir o tamanho
              child: Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.green[600],
              ),
            ),

            //Nome da Tarefa
            Text(
              taskName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
