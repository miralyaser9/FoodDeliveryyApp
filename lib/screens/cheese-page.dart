import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';
import 'burger-page.dart';
import 'single_itempage.dart';
import '../widgets/items.dart';

class CheesePage extends StatelessWidget {
   CheesePage({Key? key}) : super(key: key);

  final List<ItemModel> cheeseList=[
    ItemModel(image: "assets/c1.JPG", title: "The Melting Medley", subtitle: "Indulge in a Melting Blend of Gourmet Cheeses", price: "45"),
    ItemModel(image: "assets/c2.JPG", title: "The Cheesy Delight", subtitle: "Savor the Creamy, Melted Cheese in Every Bite ", price: "54"),
    ItemModel(image: "assets/c3.JPG", title: "The Gourmet Grilled Cheese", subtitle: "Artisan Bread and a Medley of Premium Cheeses", price: "65"),
    ItemModel(image: "assets/ch.jpg", title: "The Cheesy Jalapeño Melt", subtitle: "Melted Cheese with a Kick of Jalapeño Heat", price: "70"),
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount:cheeseList.length ,

      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.78,
      ),
      itemBuilder: (BuildContext context, int index) {

        return ItemsPage(items: cheeseList[index],onItempress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SingleItemPage(item: cheeseList[index]);
          }));
        },);
      },



    );
  }

}