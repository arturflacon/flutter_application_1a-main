import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/widget/widget_categoria.dart';
import 'package:flutter_application_1/widget/widget_cidade.dart';
import 'package:flutter_application_1/widget/widget_menu.dart';
import 'package:flutter_application_1/widget/widget_pessoa.dart';
import 'package:flutter_application_1/widget/widget_pessoa_lista.dart';

import '../widget/widget_categoria.dart';
import '../widget/widget_cidade.dart';
import '../widget/widget_menu.dart';
import '../widget/widget_pessoa.dart';
import '../widget/widget_pessoa_lista.dart';
import 'rotas.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.pessoa_lista: (context) => WidgetPessoaLista(),
      },
    );
  }
}
