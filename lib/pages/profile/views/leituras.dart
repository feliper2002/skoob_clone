import 'package:flutter/material.dart';
import 'package:skoob_clone/pages/home/widgets/posts.dart';

class Leituras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            children: [
              Card(
                child: Container(
                  height: constraints.maxHeight * .49,
                  width: constraints.maxWidth,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Meta de Leitura'),
                            Text('6 / 11 ===== 55%'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 11,
                          itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.all(10),
                            height: 170,
                            width: 80,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.speed, color: Colors.green),
                                Text(
                                  '1.008',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            Text('1.572 de 3.612 - 28 págs dia'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => Post(
                    constraints: constraints * 1.5,
                    viewName: 'Leituras',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
