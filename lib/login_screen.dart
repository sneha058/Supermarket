import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(    //to clip the overflowing blurr.
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Image.asset("asset/SupermarketRun_white.png",height: 120, width: 120,),
                    ),
                  ),
                ],
              ),
            ),
            Container(child: Text("Groceries at your finger tip", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFEA5A19)),)),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username" ,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(style:BorderStyle.solid),
                  ),
                ),

              ),
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: (){},
                        ),
                        labelText: "Password",
                        border:OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid,)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,top: 5),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Forgot Password?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 30,
              width: 100,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }

}