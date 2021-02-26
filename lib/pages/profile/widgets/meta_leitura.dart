import 'package:flutter/material.dart';

class MetaLeitura extends StatefulWidget {
  final BoxConstraints constraints;

  const MetaLeitura({Key key, this.constraints}) : super(key: key);

  @override
  _MetaLeituraState createState() => _MetaLeituraState();
}

class _MetaLeituraState extends State<MetaLeitura> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.constraints.maxHeight * .28,
      width: widget.constraints.maxWidth,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 2),
        ),
      ),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(10),
          height: widget.constraints.maxHeight * .20,
          width: widget.constraints.maxWidth * .3,
          color: Colors.grey,
        ),
      ),
    );
  }
}
