import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/burger-page.dart';

import '../models/item_model.dart';
import 'single_itempage.dart';
import '../widgets/items.dart';

class PastaPage extends StatelessWidget {
   PastaPage({Key? key}) : super(key: key);
  final List<ItemModel> pastaList=[
    ItemModel(image: "assets/paa3.jpg", title: "The Truffle Temptation", subtitle: "Indulge in a Creamy Truffle Infused Pasta", price: "110"),
    ItemModel(image: "assets/paa4.jpg", title: "The Primavera Delight", subtitle: "Vibrant Pasta Tossed with Seasonal Vegetables ", price: "95"),
    ItemModel(image: "assets/s3.JPG", title: "The Spicy Arrabbiata", subtitle: "A Spicy Tomato Sauce Infused with Herbs and Chili", price: "115"),
    ItemModel(image: "assets/paa2.jpg", title: "The Creamy Carbonara", subtitle: "Silky Pasta with Crispy Bacon and Parmesan Cream Sauce", price: "120"),
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount:pastaList.length ,

      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.78,
      ),
      itemBuilder: (BuildContext context, int index) {

        return ItemsPage(items: pastaList[index],onItempress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SingleItemPage(item: pastaList[index]);
          }));
        },);
      },



    );
  }

}