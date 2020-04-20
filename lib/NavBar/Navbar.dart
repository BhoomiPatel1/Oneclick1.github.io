
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_demo/profile.dart';
import 'dart:html' as html;

class Navbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        }else if (constraints.maxWidth > 617 && constraints.maxWidth < 1200) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
  
}

class DesktopNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child:  Container(
      constraints: BoxConstraints(maxWidth: MediaQuery. of(context). size. width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
          Text("Bhoomi's Web",
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightBlueAccent,fontSize: 30),
        ),
        Row(
          children: <Widget>[
            Text("Home",
                  style: TextStyle(color: Colors.white),
                  ),
            SizedBox(
                width: 30,
            ),
            Text("About Us",
            style: TextStyle(color: Colors.white),
            ),
             SizedBox(
                width: 30,
            ),
            Text("Contact Us",
            style: TextStyle(color: Colors.white),
            ),
             SizedBox(
                width: 30,
            ),
             RaisedButton(onPressed: _launchURL,
                child: Text("Demo"),
             ),
              SizedBox(
                width: 30,
            ),
          ],
        ),
       ],

      ),
    ),
    );
  }
  
}

_launchURL() async {
 
  html.window.open("https://flutter.dev/", "Home page");
            
}

class MobileNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child:  Container(
      constraints: BoxConstraints(maxWidth: MediaQuery. of(context). size. width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
          Text("Bhoomi's Web",
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightBlueAccent,fontSize: 30),
        ),
        Column(
          children: <Widget>[
             Row(
          children: <Widget>[
           
            Text("Home",
                  style: TextStyle(color: Colors.white),
                  ),
            SizedBox(
                width: 30,
            ),
            Text("About Us",
            style: TextStyle(color: Colors.white),
            ),
             SizedBox(
                width: 30,
            ),
            Text("Contact Us",
            style: TextStyle(color: Colors.white),
            ),
             SizedBox(
                width: 30,
            ),
            //  RaisedButton(onPressed: (){
            //       print("Demo Button Click");
            //     },
            //     child: Text("Demo"),
            //  ),
            //   SizedBox(
            //     width: 30,
            // ),
          ],
        ),
          Row(
            children: <Widget>[
               SizedBox(
                width: 50,
            ),
                  RaisedButton(onPressed: _launchURL,
                child: Text("Demo"),
             ),
             
            ],
          )
          ],
        ),
       ],
      ),
    ),
    );
  }
  
}