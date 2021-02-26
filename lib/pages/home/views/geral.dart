import 'package:flutter/material.dart';
import 'package:skoob_clone/pages/home/widgets/posts.dart';

class Geral extends StatelessWidget {
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
            child: Post(
              constraints: constraints,
              viewName: 'Geral',
            ),
          ),
        ),
      ),
    );
  }
}
