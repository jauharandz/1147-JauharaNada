import 'dart:html';

import 'package:flutter/material.dart';

class NotifPage extends StatefulWidget {
  @override
  _NotifPageState createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  final List Notif = [
    '1',
    '2',
    '3'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/gambar1.png'), fit: BoxFit.fitWidth)),
        ),
        ListView.builder(
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) {
            final number = index + 1;
            return Card(
                child: ListTile(
              title: Text('Tugas[index]', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 202, 45))),
              subtitle: Text('Keterangan[index]', style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 86, 106, 141))),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(number.toString()),
              ),
            ));
          },
          itemCount: Notif.length,
        ),
        Positioned(
            top: 650,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 88, 135, 173),
                ))),
        Positioned(
          top: 660,
          right: 50,
          child: RaisedButton(
            color: Colors.white,
            padding: EdgeInsets.all(14),
            onPressed: () {
              Navigator.pushNamed(context, '/exit');
            },
            child: Text('Exit'),
          ),
        )
      ],
    ));
  }
}
