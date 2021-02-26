import 'package:flutter/material.dart';

class Lancamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            children: [
              Container(
                height: constraints.maxHeight * .12,
                width: constraints.maxWidth,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 20,
                        ),
                        Text('Nome'),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 3,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: 30,
                  itemBuilder: (context, index) => Container(
                    height: constraints.maxHeight * .4,
                    color: Colors.grey,
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
