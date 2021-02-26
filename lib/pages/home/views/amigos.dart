import 'package:flutter/material.dart';

class Amigos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: constraints.maxHeight * .55,
            width: constraints.maxWidth,
            color: Colors.white,
            child: _postStructure(constraints),
          ),
        ),
      ),
    );
  }

  _postStructure(BoxConstraints constraints) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                  ),
                  SizedBox(width: 7),
                  Text('User name AMIGOS'),
                ],
              ),
              Text('há 3 minutos'),
            ],
          ),
          Text(
              'Isso é onde vai ficar a descrição do post que a pessoa fizer sobre um livro aleatório que ela leu, com opinião, avaliação e etc...'),
          Divider(),
          Row(
            children: [
              Container(
                height: constraints.maxHeight * .2,
                width: constraints.maxWidth * .21,
                color: Colors.grey,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.history, color: Colors.blue),
                        Text('fez histórico de leitura'),
                      ],
                    ),
                    ListTile(
                      minLeadingWidth: 1,
                      title: Text('Aqui é Nome do Livro'),
                      subtitle: Text('Aqui é Autor(a)'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Text('11 curtidas'),
              SizedBox(width: 18),
              Text('2 comentários'),
            ],
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
              SizedBox(width: 5),
              Icon(Icons.add_comment_outlined, color: Colors.grey),
            ],
          ),
        ],
      );
}
