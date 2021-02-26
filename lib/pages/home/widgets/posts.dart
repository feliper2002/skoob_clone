import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final BoxConstraints constraints;
  final String viewName;

  Post({Key key, this.constraints, this.viewName});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                Text('User name - $viewName'),
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
}
