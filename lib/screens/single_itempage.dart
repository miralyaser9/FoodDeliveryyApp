import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/models/item_model.dart';

class SingleItemPage extends StatefulWidget {
   SingleItemPage({Key? key,required this.item}) : super(key: key);
  final ItemModel item;

  @override
  State<SingleItemPage> createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  @override


  int value=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: const Color(0xFF232227,),
    body: SafeArea(child:
      Padding(padding: const EdgeInsets.only(top: 25,left: 15,right: 20,bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

            InkWell(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back,color: Colors.white,size: 32,)),
            InkWell(onTap: (){},child: const Icon(CupertinoIcons.cart_fill,color: Colors.white,size: 32,))
          ],),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)
          ,child: Image.asset(widget.item.image,height:
              MediaQuery.of(context).size.height/2.9,fit: BoxFit.fill,),)
           ,
          const SizedBox(height: 10,),
          Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Text(widget.item.title,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
              ),
              Row(children: [
                Container(height: 30,width: 30,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                    child: IconButton(iconSize: 20,onPressed: (){
                      value--;
                      setState(() {

                     });
                    }, icon: const Icon(Icons.remove))
                ) ,
                const SizedBox(width: 8,),
                Text("$value",style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                const SizedBox(width: 8,),
                InkWell(
                  child: Container(height: 30,width: 30,
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                      child: IconButton(iconSize: 20,onPressed: (){
                        value++;
                       setState(() {

                        });
                      }, icon: const Icon(Icons.add))
                  ),
                )
              ],
            )
          ],
            ),
            const SizedBox(height: 15,),
            Text(widget.item.subtitle,style: const TextStyle(
              fontSize: 24,
              color: Colors.white60
            ),)
      ],
      ),
          const SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                const Text("Total Price ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white60),
                ),
                Text("${widget.item.price} EGP",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
              ],),
              InkWell(onTap: (){},
                child: Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                ),child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Buy Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                ),
              )
            ],)
      ]
      ),
    ),
    )
       ,
    );
  }
}
