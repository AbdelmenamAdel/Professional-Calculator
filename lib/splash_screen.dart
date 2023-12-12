import 'package:calculator/calculator_screen.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});
  static const String appIcon = 'assets/app_icon.jpg';
  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Calculator(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              SplachScreen.appIcon,
              height: 100,
              width: 100,
            ),
          ),
          const Text(
            'Calculator',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
