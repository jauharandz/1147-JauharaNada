import 'package:flutter/material.dart';
import 'package:uts_362055401147/routers.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
