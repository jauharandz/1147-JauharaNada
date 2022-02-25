// @dart=2.9
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List Menu = [
    'Jadwal SBMPN',
    'Jadwal SNMPN'
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            _page = 3;
          });
        },
      ),
      body: Stack(
        children: <Widget>[
          Text(_page.toString(), textScaleFactor: 10.0),
          ElevatedButton(child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notif');
            },
          )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/gambaruts1.jpg'),
            )),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                      height: 64,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage('assets/images/gambar1.jpg'),
                          ),
                          SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Jauhara Nada Dzikria", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15)),
                              Text(
                                "No Peserta : 362055401147",
                                style: TextStyle(color: Color.fromARGB(255, 214, 214, 214), fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            top: 130,
            child: Container(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, decoration: BoxDecoration(color: Color.fromARGB(255, 246, 251, 255), borderRadius: BorderRadius.circular(30))),
          ),
          Positioned(
              top: 150,
              left: 30,
              child: Text(
                "Menu Utama",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
          Positioned(
            top: 180,
            left: 39,
            child: Column(
              children: <Widget>[
                Container(
                    child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(221, 133, 201, 159),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Icon(Icons.assessment, size: 30, color: Colors.white)),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(221, 133, 201, 159),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Icon(Icons.person, size: 30, color: Colors.white)),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(221, 133, 201, 159),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Icon(Icons.card_membership, size: 30, color: Colors.white)),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(221, 133, 201, 159),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Icon(Icons.print, size: 30, color: Colors.white)),
                    ),
                  ],
                )),
              ],
            ),
          ),
          Positioned(
              top: 240,
              left: 39,
              child: Row(
                children: <Widget>[
                  Text(
                    "Daftar\nJurusan",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Edit\nIdentitas",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 40),
                  Text(
                    "Cetak\nKartu Peserta",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 25),
                  Text(
                    "Cetak Slip\n Pembayaran",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          ListView.builder(
            padding: new EdgeInsets.only(top: 300, left: 15, right: 15),
            itemBuilder: (context, index) {
              return Card(
                color: Color.fromARGB(255, 201, 221, 201),
                child: ListTile(
                  title: Text(Menu[index]),
                  subtitle: Text('ini keterangan dari' + Menu[index], style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 86, 106, 141))),
                  leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 240, 243, 240),
                      child: Icon(
                        Icons.calendar_today,
                        size: 30,
                      )),
                ),
              );
            },
            itemCount: Menu.length,
          ),
        ],
      ),
    );
  }
}
