import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import './showImage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{
  @override
  Widget build(BuildContext context)
   {
    void show() {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new HomeScreen()),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0XFF00099a9),
        title: new Text('CONVERSIONGURU DEMO APP'),
      ),
      body:WillPopScope(
      onWillPop:()
      {
        exit(0);
      },
      child:Center(
        child:Column(children:<Widget>
        [

           ShowImage(),
           Text("About",style: TextStyle(fontSize: 25.0),),
            InkWell(
                    child: new Text('About ConversionGuru',style:TextStyle(fontSize: 20.0,color: Colors.red, decoration: TextDecoration.underline)),
                onTap: () async {
            if (await canLaunch("https://www.conversionguru.in/")) {
              await launch("https://www.conversionguru.in/");
            }
                }
                
                // launch("https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179"),
              ),
            Text("\n\n"),
               RaisedButton(
              color: Colors.orange,
            child: Text("Exit"),
            onPressed: ()
            {
              show();
            },
          ),
        ]
        ),
      ),
    ),
    );
   }
}

