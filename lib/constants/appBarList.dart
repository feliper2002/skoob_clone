import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> appBars = [
  homeAppBar(),
  lancamentosAppBAr(),
];

homeAppBar() => AppBar(
      leading: IconButton(
        icon: Icon(Icons.emoji_events_outlined),
        onPressed: () {},
      ),
      title: Column(
        children: [
          Image.asset(
            'assets/logo_skoob.png',
            width: 170,
          ),
        ],
      ),
      actions: [
        RotatedBox(
          quarterTurns: 1,
          child: IconButton(
            icon: Icon(Icons.format_align_center_outlined),
            onPressed: () {},
          ),
        ),
      ],
    );

lancamentosAppBAr() => AppBar(
      leading: Text(''),
      elevation: 0,
      backgroundColor: Colors.blue,
      title: Text('Lançamentos'),
      actions: [
        IconButton(
          icon: Icon(Icons.wallet_giftcard, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
