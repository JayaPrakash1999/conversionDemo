import 'dart:async';
import 'package:flutter/material.dart';
import './screens/homescreen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new myapp());
}
class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Splash(),
    routes: <String, WidgetBuilder>{
      'HomeScreen': (BuildContext context) => new HomeScreen()
    },
  );
  }

}
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  // startTime() async {
  //   var _duration = new Duration(seconds: 3);
  //   return new Timer(_duration, navigationPage);
  // }

  // void navigationPage() {
  //   Navigator.of(context).pushReplacementNamed('HomeScreen');
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   startTime();
  // }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
          seconds: 5,
          backgroundColor: Colors.lime,
          image: Image.asset('images/logo.png'),
   
          photoSize: 200.0,
          title: Text("Welcome to ConversionGuru",style:TextStyle(fontSize:25.0,color:Colors.deepOrange),),
          loaderColor: Colors.black,
          navigateAfterSeconds: new HomeScreen(),
        );
    // return new Scaffold(
    //   body: Center(
    //     child: new Image.asset("images/logo.png"),
    //   )
    // );
  }
}
