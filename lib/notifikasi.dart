import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NotifPage extends StatefulWidget {
  @override
  _NotifPageState createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List Notif = [
    'Cek Kartu Peserta',
    'Lengkapi Identitas'
  ];
  final List Keterangan = [
    'Hi!\nSegera cek identitas diri dalam kartu peserta kamu ya',
    'Hi\nSegera lengkapi identitas diri kau ya'
  ];

  get _page => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.notifications, size: 30),
            Icon(Icons.help, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            setState(() {
              var _page = index;
            });
          },
        ),
        body: Stack(
          children: <Widget>[
            Text(_page.toString(), textScaleFactor: 10.0),
            ElevatedButton(
              child: Text('go to page of index 1'),
              onPressed: () {
                final CurvedNavigationBarState? navBarState = _bottomNavigationKey.currentState;
                navBarState?.setPage(1);
              },
            ),
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
                top: 80,
                left: 120,
                child: Text(
                  "Notifikasi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
                )),
            Positioned(
              top: 130,
              child: Container(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, decoration: BoxDecoration(color: Color.fromARGB(255, 246, 251, 255), borderRadius: BorderRadius.circular(30))),
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 170, left: 15, right: 15),
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
