import 'package:flutter/material.dart';

class ProfileVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.lightGreen,
        backgroundColor: Colors.lightGreen
      ),
      home: Profile(title: 'Flutter Demo Home Page'),
    );
  }
}

class Profile extends StatefulWidget{
  Profile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyProfile createState() => MyProfile();
}

class MyProfile extends State<Profile> {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
    appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
        )
      ),
     );
  }
}