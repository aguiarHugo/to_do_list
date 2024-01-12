// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[800],
      content: Container(
        height: 120,
        child: Column(children: [
          // get user input
          TextField(
            style: TextStyle(
              color: Colors.white, // Cor do texto que está sendo digitado
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Adicione uma nova tarefa",
              hintStyle: TextStyle(
                color: Colors.grey, // Cor do texto de dica (hint)
              ),
            ),
          ),

          // buttons
        ]),
      ),
    );
  }
}
