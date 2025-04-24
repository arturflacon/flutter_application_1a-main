import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _Lista createState() => _Lista();
}

class _Lista extends State<Lista> {
  var nomes = ['Joana', 'Joaquim', 'Mário', 'Maria'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
        actions: [
          IconButton(
              onPressed: () {
                nomes.add('Marta');
                print('deu certo! ${nomes.length}');
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: nomes.length, itemBuilder: (context, i) => Text(nomes[i])),
    );
  }
}
