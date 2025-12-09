import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  String name = 'Tom Hardy';
  String bio = 'Actor';
  String age = '48 years old';
  String city = 'London';
  String interests = 'В свободное время Том Харди регулярно посещает тренажёрный зал,\n а также занимается джиу-джитсу и кикбоксингом. \nРади определённых ролей он неоднократно набирал вес, или, наоборот, худел, \nпричём речь идёт о нескольких десятках килограммов массы.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: Text('Profile'),
      backgroundColor: Colors.tealAccent,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      ),
      body: 
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/tom.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(
                color: Colors.amber,
                fontFamily: 'rez'
              ),
            ),
            SizedBox(height: 8),
            Text(
              age,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 8),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
            child: Text(
              bio,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),),
            Text(
              city,
              style: TextStyle(
              ),
            ),
            SizedBox(height: 8),
            Text(
              interests,
              style: TextStyle(
                color: Colors.red,
                fontFamily: 'rez'
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
  

}