
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, constraints){
        // if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        // }
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
            // Stack(
            //   children: <Widget>[
            //       Text("Home",
            //       style: TextStyle(color: Colors.white),
            //       ),
            //       RaisedButton(onPressed: (){
            //         print("Home Button Click");
            //       },
            //       color: Colors.tr,
            //       )
                  
            //   ],
            // ),
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
             RaisedButton(onPressed: (){
                  print("Demo Button Click");
                },
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
        Row(
          children: <Widget>[
            // Stack(
            //   children: <Widget>[
            //       Text("Home",
            //       style: TextStyle(color: Colors.white),
            //       ),
            //       RaisedButton(onPressed: (){
            //         print("Home Button Click");
            //       },
            //       color: Colors.tr,
            //       )
                  
            //   ],
            // ),
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
             RaisedButton(onPressed: (){
                  print("Demo Button Click");
                },
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