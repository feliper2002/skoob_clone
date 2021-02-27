import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> appBarsList(BuildContext context) => [
      homeAppBar(),
      lancamentosAppBAr(),
      AppBar(),
      AppBar(),
      profileAppBar(context),
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

profileAppBar(BuildContext context) => AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
      elevation: 0,
      title: Text(
        'User Name',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.mail_outline, color: Colors.grey),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.menu, color: Colors.grey),
          onPressed: () {},
        ),
      ],
    );
