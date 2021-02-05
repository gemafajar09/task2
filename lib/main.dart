import 'package:flutter/material.dart';
import 'package:task2/payment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final route = <String, WidgetBuilder>{
    Payment.route: (_) => Payment(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: route,
      initialRoute: Payment.route,
    );
  }
}
