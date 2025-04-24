import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget_pessoa.dart';

main() {}

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      'nome': 'Joana',
      'telefone': '(44) 99643-4259',
      'url':
          'https://scontent.fpoa10-1.fna.fbcdn.net/v/t1.6435-9/51947625_1817733875021848_2063494347050975232_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=833d8c&_nc_ohc=sJvLE69oePUQ7kNvwG3MFX5&_nc_oc=AdlVEEzRgpT9lafD5R8OGqd-inFPz1bMxKeNwL9SstOo8CF7qmOv04u3-lkixZLkS5o&_nc_zt=23&_nc_ht=scontent.fpoa10-1.fna&_nc_gid=Eyo_XCNoj-OZuzG8TKwY_Q&oh=00_AfG6sibUbncBIJkpFuC4Ilv9H0MRIaY_rIrrQsij5ewcsg&oe=682901DD'
    },
    {
      'nome': 'Marcos',
      'telefone': '(44) 94532-7497',
      'url':
          'https://cdn.pixabay.com/photo/2021/03/03/10/20/portrait-6064965_960_720.jpg'
    },
    {
      'nome': 'Carlos',
      'telefone': '(44) 99342-1598',
      'url':
          'https://cdn.pixabay.com/photo/2020/11/10/15/46/man-5730206_1280.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Pessoas'),
      ),
      body: ListView.builder(
          itemCount: pessoas.length,
          itemBuilder: (context, contador) => ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(('${pessoas[contador]['url']}')),
                ),
                title: Text('${pessoas[contador]['nome']}'),
                subtitle: Text('${pessoas[contador]['telefone']}'),
                trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.orange,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WidgetPessoa()
                                )
                            );
                          },
                          icon: Icon(Icons.edit),
                          color: Colors.blue,
                        )
                      ],
                    )),
              )),
    );
  }
}
