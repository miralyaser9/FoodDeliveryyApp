import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/models/item_model.dart';

class ItemsPage extends StatelessWidget {
   ItemsPage({Key? key, required this.items,required this.onItempress}) : super(key: key);
  final ItemModel items;
  VoidCallback onItempress;

  @override
  Widget build(BuildContext context) {
     return
    // GridView.count(
    //   crossAxisCount: 2,
    //   shrinkWrap: true,
    //   childAspectRatio: 0.78,
    //   children: [
    //     for(int i=1;i<5;i++)
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical:8,horizontal: 10 ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: const Color(0xff645858)
              ,boxShadow: [
                BoxShadow(
                    color: const Color(0xFF232227).withOpacity(0.4),
                 blurRadius:8,
                  spreadRadius: 1

                )
              ]
          ),
          child: ListView(children: [
            InkWell(onTap: onItempress,
              child: Container(
                margin: const EdgeInsets.all(15)
                ,child: Image.asset(items.image,width: 120,height: 120,fit: BoxFit.cover,),
              ),
            ),
            Container(alignment: Alignment.centerLeft,child:
              Text(items.title,style: const TextStyle(fontSize: 18
              ,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            Container(alignment: Alignment.centerLeft,child:
            Text(items.subtitle,style: const TextStyle(fontSize: 15
                ,color: Colors.orangeAccent),
            ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(items.price ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                const Icon(CupertinoIcons.cart_badge_plus,size: 27,color: Colors.white,)

            ],)
          ],),
        );


  }
}
