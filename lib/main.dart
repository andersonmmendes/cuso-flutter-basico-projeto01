import 'package:flutter/material.dart';
import 'package:projeto01/pages/details.dart';
import 'package:projeto01/pages/home.dart';
import 'package:projeto01/pages/login.dart';
import 'package:projeto01/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const Splash(),
        '/login': (_) => Login(),
        '/home': (_) => const Home(),
        '/details': (_) => const DetailsPage(),
      },
    );
  }
}
