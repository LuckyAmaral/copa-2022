import 'package:flutter/material.dart';

class ListaEquipes extends StatelessWidget {
  ListaEquipes({Key? key}) : super(key: key);

  final equipes = [
    {
      "nome": "Catar",
      "Grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.pnghttps://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.pnghttps://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.pnghttps://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.png"
    },
    {
      "nome": "Equador",
      "Grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/thumb/7/74/FEFecu.png/150px-FEFecu.pnghttps://upload.wikimedia.org/wikipedia/pt/thumb/7/74/FEFecu.png/150px-FEFecu.pnghttps://upload.wikimedia.org/wikipedia/pt/thumb/7/74/FEFecu.png/150px-FEFecu.pnghttps://upload.wikimedia.org/wikipedia/pt/thumb/7/74/FEFecu.png/150px-FEFecu.png"
    },
    {
      "nome": "Senegal",
      "Grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/7/7c/FSenegalaiseF.pnghttps://upload.wikimedia.org/wikipedia/pt/7/7c/FSenegalaiseF.pnghttps://upload.wikimedia.org/wikipedia/pt/7/7c/FSenegalaiseF.pnghttps://upload.wikimedia.org/wikipedia/pt/7/7c/FSenegalaiseF.png"
    },
    {
      "nome": "Paises Baixos",
      "Grupo": "A",
      "url_simbolo":
          "https://upload.wikimedia.org/wikipedia/pt/a/a1/Netherlands_national_football_team_logo_2017.pnghttps://upload.wikimedia.org/wikipedia/pt/a/a1/Netherlands_national_football_team_logo_2017.pnghttps://upload.wikimedia.org/wikipedia/pt/a/a1/Netherlands_national_football_team_logo_2017.pnghttps://upload.wikimedia.org/wikipedia/pt/a/a1/Netherlands_national_football_team_logo_2017.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: equipes.length,
        itemBuilder: (context, i) {
          var equipe = equipes[i];
          var simbolo = Image.network(equipe["url_simbolo"]!);
          return ListTile(
              leading: simbolo,
              title: Text(equipe["nome"]!),
              subtitle: Text("Grupo " + equipe["grupo"]!));
        });
  }
}
