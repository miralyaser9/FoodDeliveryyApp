import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelivery/screens/first-screen.dart';
import 'package:fooddelivery/screens/home_page.dart';
import 'package:fooddelivery/screens/single_itempage.dart';
import 'package:fooddelivery/screens/splash-screen.dart';

void main() {
  runApp( myApp());
}

class myApp extends StatefulWidget{
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  void initState() {
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,

     home: SplashScreen()
   );
  }
}