// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:to_do_list/utils/action_buttons.dart";

class DialogBox extends StatelessWidget {
  final controller;

  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[700],
      content: SizedBox(
        height: 180,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // get user input
          TextField(
            style: TextStyle(
              color: Colors.white, // Cor do texto que está sendo digitado
            ),
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Adicione uma nova tarefa",
              hintStyle: TextStyle(
                color: Colors.grey, // Cor do texto de dica (hint)
              ),
            ),
          ),

          // buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ActionButtons(text: "Salvar", onPressed: () {}),
              const SizedBox(width: 8),
              ActionButtons(text: "Cancelar", onPressed: () {})
            ],
          )
        ]),
      ),
    );
  }
}
