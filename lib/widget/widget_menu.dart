import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/widget/widget_pessoa_lista.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget criarMenu(
        {required IconData icone,
        required String rotulo,
        required String rota}) {
      return ListTile(
        leading: Icon(icone),
        title: Text(rotulo),
        onTap: () => Navigator.pushNamed(context, rota),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Menu Principal')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            criarMenu(
                icone: Icons.map,
                rotulo: 'Cadastro de Estado',
                rota: Rotas.estado),
            criarMenu(
                icone: Icons.location_city,
                rotulo: 'Cadastro de Cidade',
                rota: Rotas.cidade),
            criarMenu(
                icone: Icons.person,
                rotulo: 'Cadastro de Pessoa',
                rota: Rotas.pessoa),
          ],
        ),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Insira o nome da pessoa',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Sobrenome',
                hintText: 'Insira o sobrenome da pessoa',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Telefone',
                hintText: 'Insira o telefone da pessoa',
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Cidade'),
              items: const [
                DropdownMenuItem(value: '1', child: Text('Paranavaí')),
                DropdownMenuItem(value: '2', child: Text('SÃO PAULO')),
                DropdownMenuItem(value: '3', child: Text('Naviraí')),
                DropdownMenuItem(value: '4', child: Text('Terra Rica')),
              ],
              onChanged: (value) {},
            ),
            ElevatedButton(
              child: Text('Salvar'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetPessoaLista()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
