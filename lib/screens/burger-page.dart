import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/single_itempage.dart';

import '../models/item_model.dart';
import '../widgets/items.dart';

class BurgerPage extends StatelessWidget {

   BurgerPage({Key? key,}) : super(key: key);

  final List<ItemModel> burgerList=[
    ItemModel(image: "assets/b1.JPG", title: "The Juicy Tower", subtitle: "Layers of Flavor Packed in Every Bite", price: "100"),
    ItemModel(image: "assets/bu2.jpg", title: "The Cheesy Cowboy", subtitle: "A Burger That's Ripe with Tex-Mex Goodness ", price: "125"),
    ItemModel(image: "assets/b3.JPG", title: "The Veggie Fusion", subtitle: "A Wholesome Burger Packed with Fresh Vegetables", price: "140"),
    ItemModel(image: "assets/bu.jpeg", title: "The Firecracker", subtitle: "A Fiery Burger That Packs a Spicy Punch", price: "250"),
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount:burgerList.length ,

      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,mainAxisSpacing: 5.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.78,
      ),
      itemBuilder: (BuildContext context, int index) {

        return ItemsPage(items: burgerList[index],
          onItempress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SingleItemPage(item: burgerList[index]);
          }));
        },);
      },
    );
  }
}