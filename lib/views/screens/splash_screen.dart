import 'package:flutter/material.dart';
import 'package:yohire/views/screens/home/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  void initState() {
   
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/yohire_logo.png',
          width: MediaQuery.of(context).size.width * 0.6 , 
          height: MediaQuery.of(context).size.height * 0.3 , 
        ),
      ),
    );
  }
}