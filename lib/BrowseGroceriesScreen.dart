import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BrowseGroceriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        title : Text("BrowseGrocerries", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.deepOrange)),
        centerTitle: true,
        backgroundColor : Colors.white,
       /* leading: Container(
          height: 10,
          width: 500,
          child: TextField(
            decoration: InputDecoration(
                hintText: "search for over 1000 products",
                border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none, color: Colors.transparent)
                )
            ),
          ),
        ),*/
      ),
      body: Column(
        children: [
          SizedBox(height: 8,),
          Expanded(
            flex: 2,
            child: Container(   //Ads Container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffffffff)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffffffff)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffffffff)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            flex: 1,
            child: Container(   //Irrestible offer container
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 9,),
                      Text("Irrestible Offers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.deepOrange),),
                    ],
                  ),
                  Expanded(   //Food, Vegetables, Juices, Bread
                      child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Center(
                              child: Text("Fruits",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.deepOrange),)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Center(
                              child: Text("Vegetables",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.deepOrange),)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Center(
                              child: Text("Juices",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.deepOrange),)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Center(
                              child: Text("Baked",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.deepOrange),)),),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
          Expanded(   //when including GridView inside Column widget we wrap it with Expanded widget to specify that the remaining space is occupied by the gridview to avoid rendering issues
            flex: 5,
            child: GridView.count(crossAxisCount: 2,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/apple 1.png"),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Apple", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 450", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/pappaya.png",scale: 2,),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pappaya", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 250", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                  width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/Peach.png", scale: 2,),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Peach", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 225", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                  width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/Orange.png",scale: 2,),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Orange", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 150", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                  width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/Strawberry.png"),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Strawberry", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 600", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                  width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/Pineapple (1).png"),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pineapple", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 350", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                  width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/apple 1.png"),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Apple", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 450", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                  width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Expanded(   //with two expanded widget we divide the main container into 2 equal parts
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset("asset/apple 1.png"),
                          ),
                        ),
                      ),
                      Expanded(   //bottom half
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Apple", style : TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                              Text("Rs. 450", style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),),
                              Container(
                                  width: 160,
                                  child: OutlinedButton(onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 12),)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],),
          )
        ],
      )
    );
  }
}