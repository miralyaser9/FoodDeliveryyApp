import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/first-screen.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 8),(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return const FirstScreen();
      }));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(child:
          ClipRRect(borderRadius: BorderRadius.circular(80),child: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/hd/35d178100666679.5f0ddf01b529d.gif'))),
        ),
      ),

    );
  }
}
