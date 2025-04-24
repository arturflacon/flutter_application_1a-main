import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista')),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(label: Text('nome:')),
              validator: (value) {
                if (value == null || value.length < 3) {
                  return 'Nome deve possuir 3 caracteres';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text('e-mail:')),
              validator: (value) {
                if (value == null || !value.contains('@')) {
                  return 'Nome deve possuir @';
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('deu certo');
                  } else {
                    print('erro');
                  }
                },
                child: const Text('Enviar'))
          ],
        ),
      ),
    );
  }
}
