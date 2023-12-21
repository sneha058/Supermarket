import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrowseGroceriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BrowseGroceriesScreen"),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
      ),
    );
  }
}