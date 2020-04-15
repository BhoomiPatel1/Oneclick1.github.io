import 'package:flutter/material.dart';
import 'package:web_app_demo/NavBar/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromRGBO(3, 240, 252, 1.0),Color.fromRGBO(3, 23, 252, 1.0)],

          )
        ),
        child: Column(
          children: <Widget>[
            Navbar(),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("Welcome To Website",
                  style: TextStyle(color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
 
}


