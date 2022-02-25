import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
              child: Center(child: Icon(Icons.person, size: 50, color: Colors.white)),
            ),
            SizedBox(height: 20),
            Text(
              "Selamat Datang",
              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)), prefixIcon: Icon(Icons.person, size: 30), hintText: "Masukkan Nomor Peserta", hintStyle: TextStyle(color: Colors.black), labelText: "Nomor Peserta", labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)), prefixIcon: Icon(Icons.lock, size: 30), hintText: "Masukkan Password", hintStyle: TextStyle(color: Colors.black), labelText: "Password", labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: RaisedButton(
                color: Color.fromARGB(255, 110, 170, 112),
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'Masuk',
                  style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              child: RaisedButton(
                color: Color.fromARGB(255, 80, 109, 81),
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.pushNamed(context, '/daftar');
                },
                child: Text(
                  'Daftar',
                  style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
