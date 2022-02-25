import 'dart:html';

import 'package:flutter/material.dart';

class NotifPage extends StatefulWidget {
  @override
  _NotifPageState createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  final List Notif = [
    'Cek Kartu Peserta',
    'Lengkapi Identitas'
  ];
  final List Keterangan = [
    'Hi!\nSegera cek identitas diri dalam kartu peserta kamu ya',
    'Hi\nSegera lengkapi identitas diri kau ya'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/gambaruts1.jpg'),
          )),
        ),
        Positioned(
            top: 30,
            left: 300,
            child: Text(
              "Notifikasi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
            )),
        Positioned(
          top: 130,
          child: Container(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, decoration: BoxDecoration(color: Color.fromARGB(255, 246, 251, 255), borderRadius: BorderRadius.circular(30))),
        ),
        ListView.builder(
          padding: EdgeInsets.only(top: 300),
          itemBuilder: (context, index) {
            final number = index + 1;
            return Card(
                child: ListTile(
              title: Text(Notif[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
              subtitle: Text(Keterangan[index], style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 86, 106, 141))),
              leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 171, 209, 174),
                  child: Icon(
                    Icons.notification_important_rounded,
                    size: 30,
                  )),
            ));
          },
          itemCount: Notif.length,
        ),
      ],
    ));
  }
}
