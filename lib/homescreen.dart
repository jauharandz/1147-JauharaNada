import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List Menu = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8'
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                      child: Center(child: Icon(Icons.person, size: 30, color: Colors.white)),
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
          Positioned(
            top: 280,
            child: ListView.builder(
              padding: new EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(Menu[index]),
                  ),
                );
              },
              itemCount: Menu.length,
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(color: Color.fromARGB(255, 219, 226, 219)),
              )),
          Positioned(
              bottom: 30,
              left: 50,
              child: Container(
                child: Row(children: <Widget>[
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                    child: Center(child: Icon(Icons.home, size: 15, color: Color.fromARGB(221, 15, 15, 15))),
                  ),
                  SizedBox(width: 50),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                    child: RaisedButton(
                      color: Color.fromARGB(255, 27, 47, 56),
                      padding: EdgeInsets.all(5),
                      onPressed: () {
                        Navigator.pushNamed(context, '/notif');
                      },
                      child: Icon(
                        Icons.alarm,
                        size: 15,
                        color: Color.fromARGB(221, 133, 201, 159),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                    child: Center(child: Icon(Icons.help, size: 15, color: Color.fromARGB(221, 133, 201, 159))),
                  ),
                  SizedBox(width: 50),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                    child: Center(child: Icon(Icons.person, size: 15, color: Color.fromARGB(221, 133, 201, 159))),
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}
