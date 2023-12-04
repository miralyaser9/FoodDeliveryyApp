import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(
      backgroundColor: Colors.white54,clipBehavior: Clip.antiAlias,
      child: InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const HomePage();
        }));
      },
        child: const Padding(
          padding: EdgeInsets.only(top: 150),
          child: ListTile(leading: Icon(Icons.menu_book_sharp,size: 50,color: Colors.orangeAccent,),
            title: Text("Our Menu",style: TextStyle(fontSize: 20),)
            ,),
        ),
      ),
    ),
     body:
      Center(
        child: Container(height: 850,width: double.infinity,
          child:
           const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text("Welcome to our resturant 🧡 scroll left to see Menu📖",style:
              TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
          ),decoration:
          const BoxDecoration(image: DecorationImage(
              opacity: 0.6,
              image: AssetImage
                ("assets/360_F_221401603_6urJw6Di9KjlgcPgLfkdVLHtc5Q21aCx.jpg"),fit: BoxFit.fill),

          ),
        ),
      ),
    );
  }
}
