import 'package:flutter/material.dart';
import 'package:raman_lab_parsa/views/home/home_screen.dart';

import '../auth/log_in_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen ({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isTrue=true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      if(isTrue){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
      }
      else{
        Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen(),));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Raman Lab Parsa")
          ],
        ),
      ),
    );
  }
}
