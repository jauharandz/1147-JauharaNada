import 'package:flutter/material.dart';
import 'package:uts_362055401147/login.dart';
import 'package:uts_362055401147/homescreen.dart';
import 'package:uts_362055401147/notifikasi.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/notif':
        return MaterialPageRoute(builder: (_) => NotifPage());
      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Tombol Belum Bekerja')),
      );
    });
  }
}
