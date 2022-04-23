import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade700,
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white54,
        ),
      ),
    );
  }
}
