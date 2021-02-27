import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'shared/styles/theme.dart';

void main() => runApp(InitApp());

class InitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Bookshelf',
      home: HomePage(),
      theme: themeData(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}
