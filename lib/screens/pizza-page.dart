

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/single_itempage.dart';
import 'package:fooddelivery/widgets/items.dart';

import '../models/item_model.dart';
import 'burger-page.dart';

class PizzaPage extends StatelessWidget {
   PizzaPage({Key? key}) : super(key: key);

  final List<ItemModel> pizaaList=[
    ItemModel(image: "assets/p1.JPG", title: "Margherita", subtitle: "Mozzarella Cheese and Pizza Sauce", price: "120"),
    ItemModel(image: "assets/p2.JPG", title: "6 Cheese", subtitle: "A blend of 6 delicious cheeses (Gouda,Cheddar , Emmental,  )", price: "165"),
    ItemModel(image: "assets/p3.JPG", title: "3 Cheese X 2 Toppings", subtitle: "A blend of 3 delicious cheeses with 2 toppings of your choice ", price: "225"),
    ItemModel(image: "assets/p4.JPG", title: "Super Papa's", subtitle: "Pepperoni, Italian Sausage, Smoked Veal, Onions, Green Peppe", price: "150"),
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount:pizaaList.length ,

      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.78,
      ),
      itemBuilder: (BuildContext context, int index) {

        return ItemsPage(items: pizaaList[index],onItempress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SingleItemPage(item: pizaaList[index]);
          }));
        },);
      },



    );
  }

}
