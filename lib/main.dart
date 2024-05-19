import 'package:flutter/material.dart';
import 'package:incubator/config/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      initialRoute: Routes.initialRoute,
      routes: routes,
    );
  }
}
