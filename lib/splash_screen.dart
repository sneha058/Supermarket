import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/first_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();

  }

}

class SplashScreenState extends State<SplashScreen>{
   @override
  void initState() {
     Timer(Duration(seconds: 3), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstScreen(),));
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         // 0xff is the prefix for every hex code.
         color: Color(0xFFEA5A19),
       child: Center(
        child: Image.asset("asset/SupermarketRun_coloured.png", height: 125, width: 125,),
       ),
       ),
     );
  }
}