import 'package:flutter/material.dart';
import 'package:supermarket/BrowseGroceriesScreen.dart';
import 'package:supermarket/login_screen.dart';
import 'package:supermarket/splash_screen.dart';

void main() {
  runApp(SupermarketApp());
}

class SupermarketApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      body:Column(
        //complete screen
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
      // image container
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFFFFFFF)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset('asset/SupermarketRun_white.png', height: 30,width: 30,),
                            ],
                          ),
                        ),
                        Expanded(child: Image.asset('asset/cart_bgrem.png',height: 400, width: 400,)),
                      ],
                    ),
                  ),
                ),
          Container(
            child: Text('Welcome To Our Store', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFEA5A19)),),
          ),
          Container(
            child: Text('Grab your groceries with just one click', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFEA5A19)),),
          ),
          Container(
            width: 300,
            child: OutlinedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> BrowseGroceriesScreen(),));
              },
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(color: Color(0xFFEA5A19)))
              ),
              child: Text("Browse Groceries"),
            ),
          ),
          Container(
            width: 300,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("SignUp"),
            ),
          ),
          Container(
            width: 300,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
              child: Text("Login"),
            ),
          ),
              ],),
    );
  }

}
