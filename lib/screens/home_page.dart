import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/burger-page.dart';
import 'package:fooddelivery/screens/cheese-page.dart';
import 'package:fooddelivery/screens/pasta-page.dart';
import 'package:fooddelivery/screens/pizza-page.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SafeArea(child: Padding(padding: EdgeInsets.only(top: 25),
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           IconButton(onPressed: (){
             Navigator.pop(context);
           }, icon: const Icon(Icons.arrow_back_outlined,size: 30,color: Colors.white,)),


         const SizedBox(height: 10,),
         const Padding(padding: EdgeInsets.symmetric(horizontal: 15)
         ,child:
           Text("Hot & Fast Food",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),
           ),
         ),
         const SizedBox(height: 5,),
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 15),
           child: Text("Delivers on Time",
             style: TextStyle(color: Colors.white60,fontSize: 22
                 ,),
           ),
         ),
         const SizedBox(height: 30,),
           const TabBar(
             isScrollable: true,
           labelStyle: TextStyle(fontSize: 20),
             labelPadding: EdgeInsets.symmetric(horizontal: 20),
             tabs: [
               Tab(text: "Burger",),
             Tab(text: "Pizza",),
               Tab(text: "cheese",),
               Tab(text: "Pasta",),

             ],
           )
               ,const SizedBox(height: 30,),
           Flexible(
             flex: 1,
               child: TabBarView(children:[
             BurgerPage(),
             PizzaPage(),
            CheesePage(),
             PastaPage()
           ]
           )
           )
       ],
       ),
        ),
        ),
        ),
    );
  }
}
