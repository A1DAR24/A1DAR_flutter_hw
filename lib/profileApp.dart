import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_a1dar/prodilePage.dart';

class ProfilApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}
